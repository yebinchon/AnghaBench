
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
typedef TYPE_1__* res_state ;
typedef int ns_updrec ;
struct TYPE_5__ {unsigned int options; } ;


 int NETDB_INTERNAL ;
 unsigned int RES_INIT ;
 int RES_SET_H_ERRNO (TYPE_1__*,int ) ;
 TYPE_1__ _res ;
 int res_init () ;
 int res_nmkupdate (TYPE_1__*,int *,int *,int) ;

int
res_mkupdate(ns_updrec *rrecp_in, u_char *buf, int buflen) {
 res_state statp = &_res;
 if ((statp->options & RES_INIT) == 0U && res_init() == -1) {
  RES_SET_H_ERRNO(statp, NETDB_INTERNAL);
  return (-1);
 }

 return (res_nmkupdate(statp, rrecp_in, buf, buflen));
}
