
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
typedef TYPE_1__* res_state ;
struct TYPE_5__ {unsigned int options; } ;


 int NETDB_INTERNAL ;
 unsigned int RES_INIT ;
 int RES_SET_H_ERRNO (TYPE_1__*,int ) ;
 TYPE_1__ _res ;
 int res_init () ;
 int res_nmkquery (TYPE_1__*,int,char const*,int,int,int const*,int,int const*,int *,int) ;

int
res_mkquery(int op,
     const char *dname,
     int class, int type,
     const u_char *data,
     int datalen,
     const u_char *newrr_in,
     u_char *buf,
     int buflen)
{
 res_state statp = &_res;
 if ((statp->options & RES_INIT) == 0U && res_init() == -1) {
  RES_SET_H_ERRNO(statp, NETDB_INTERNAL);
  return (-1);
 }
 return (res_nmkquery(statp, op, dname, class, type,
        data, datalen,
        newrr_in, buf, buflen));
}
