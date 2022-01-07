
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
typedef TYPE_1__* res_state ;
typedef int buf ;
struct TYPE_10__ {int rcode; int arcount; int nscount; int ancount; } ;
struct TYPE_9__ {int _flags; int options; } ;
typedef TYPE_2__ HEADER ;



 int HOST_NOT_FOUND ;
 int MAXPACKET ;


 int NO_DATA ;
 int NO_RECOVERY ;
 int NS_OPT_NSID ;

 int QUERY ;

 int RES_DEBUG ;
 int RES_F_EDNS0ERR ;
 unsigned int RES_NSID ;
 int RES_SET_H_ERRNO (TYPE_1__*,int ) ;
 unsigned int RES_USE_DNSSEC ;
 unsigned int RES_USE_EDNS0 ;

 int TRY_AGAIN ;
 int ntohs (int ) ;
 char* p_rcode (int) ;
 int printf (char*,...) ;
 int res_nmkquery (TYPE_1__*,int ,char const*,int,int,int *,int ,int *,int *,int) ;
 int res_nopt (TYPE_1__*,int,int *,int,int) ;
 int res_nopt_rdata (TYPE_1__*,int,int *,int,int *,int ,int ,int *) ;
 int res_nsend (TYPE_1__*,int *,int,int *,int) ;

int
res_nquery(res_state statp,
    const char *name,
    int class, int type,
    u_char *answer,
    int anslen)
{
 u_char buf[MAXPACKET];
 HEADER *hp = (HEADER *) answer;
 u_int oflags;
 u_char *rdata;
 int n;

 oflags = statp->_flags;

again:
 hp->rcode = 132;





 n = res_nmkquery(statp, QUERY, name, class, type, ((void*)0), 0, ((void*)0),
    buf, sizeof(buf));
 if (n <= 0) {




  RES_SET_H_ERRNO(statp, NO_RECOVERY);
  return (n);
 }

 n = res_nsend(statp, buf, n, answer, anslen);
 if (n < 0) {
  RES_SET_H_ERRNO(statp, TRY_AGAIN);
  return (n);
 }

 if (hp->rcode != 132 || ntohs(hp->ancount) == 0) {
  switch (hp->rcode) {
  case 130:
   RES_SET_H_ERRNO(statp, HOST_NOT_FOUND);
   break;
  case 128:
   RES_SET_H_ERRNO(statp, TRY_AGAIN);
   break;
  case 132:
   RES_SET_H_ERRNO(statp, NO_DATA);
   break;
  case 133:
  case 131:
  case 129:
  default:
   RES_SET_H_ERRNO(statp, NO_RECOVERY);
   break;
  }
  return (-1);
 }
 return (n);
}
