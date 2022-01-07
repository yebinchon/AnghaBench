
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
struct res_target {int qclass; int qtype; int anslen; int n; int * answer; struct res_target* next; } ;
typedef TYPE_1__* res_state ;
struct TYPE_9__ {int rcode; int ancount; } ;
struct TYPE_8__ {int _flags; int options; } ;
typedef TYPE_2__ HEADER ;



 int HOST_NOT_FOUND ;
 int MAXPACKET ;
 int NETDB_INTERNAL ;


 int NO_DATA ;
 int NO_RECOVERY ;

 int QUERY ;

 int RES_DEBUG ;
 int RES_F_EDNS0ERR ;
 int RES_SET_H_ERRNO (TYPE_1__*,int ) ;
 unsigned int RES_USE_DNSSEC ;
 unsigned int RES_USE_EDNS0 ;

 int TRY_AGAIN ;
 int free (int *) ;
 int * malloc (int ) ;
 int ntohs (int ) ;
 int printf (char*,...) ;
 int res_nmkquery (TYPE_1__*,int ,char const*,int,int,int *,int ,int *,int *,int ) ;
 int res_nopt (TYPE_1__*,int,int *,int ,int) ;
 int res_nsend (TYPE_1__*,int *,int,int *,int) ;

__attribute__((used)) static int
res_queryN(const char *name, struct res_target *target, res_state res)
{
 u_char *buf;
 HEADER *hp;
 int n;
 u_int oflags;
 struct res_target *t;
 int rcode;
 int ancount;

 rcode = 132;
 ancount = 0;

 buf = malloc(MAXPACKET);
 if (!buf) {
  RES_SET_H_ERRNO(res, NETDB_INTERNAL);
  return -1;
 }

 for (t = target; t; t = t->next) {
  int class, type;
  u_char *answer;
  int anslen;

  hp = (HEADER *)(void *)t->answer;


  class = t->qclass;
  type = t->qtype;
  answer = t->answer;
  anslen = t->anslen;

  oflags = res->_flags;

again:
  hp->rcode = 132;






  n = res_nmkquery(res, QUERY, name, class, type, ((void*)0), 0, ((void*)0),
      buf, MAXPACKET);
  if (n > 0 && (res->_flags & RES_F_EDNS0ERR) == 0 &&
      (res->options & (RES_USE_EDNS0|RES_USE_DNSSEC)) != 0U)
   n = res_nopt(res, n, buf, MAXPACKET, anslen);
  if (n <= 0) {




   free(buf);
   RES_SET_H_ERRNO(res, NO_RECOVERY);
   return (n);
  }
  n = res_nsend(res, buf, n, answer, anslen);
  if (n < 0) {




   if ((res->options & (RES_USE_EDNS0|RES_USE_DNSSEC))
       != 0U &&
       ((oflags ^ res->_flags) & RES_F_EDNS0ERR) != 0) {
    res->_flags |= RES_F_EDNS0ERR;
    if (res->options & RES_DEBUG)
     printf(";; res_nquery: retry without EDNS0\n");
    goto again;
   }
   rcode = hp->rcode;




   continue;
  }

  if (n > anslen)
   hp->rcode = 133;
  if (hp->rcode != 132 || ntohs(hp->ancount) == 0) {
   rcode = hp->rcode;





   continue;
  }

  ancount += ntohs(hp->ancount);

  t->n = n;
 }

 free(buf);

 if (ancount == 0) {
  switch (rcode) {
  case 130:
   RES_SET_H_ERRNO(res, HOST_NOT_FOUND);
   break;
  case 128:
   RES_SET_H_ERRNO(res, TRY_AGAIN);
   break;
  case 132:
   RES_SET_H_ERRNO(res, NO_DATA);
   break;
  case 133:
  case 131:
  case 129:
  default:
   RES_SET_H_ERRNO(res, NO_RECOVERY);
   break;
  }
  return (-1);
 }
 return (ancount);
}
