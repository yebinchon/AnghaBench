
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
typedef TYPE_1__* res_state ;
struct TYPE_4__ {unsigned int options; } ;


 unsigned int RES_INIT ;
 TYPE_1__ _res ;
 int res_init () ;
 int res_nsend (TYPE_1__*,int const*,int,int *,int) ;

int
res_send(const u_char *buf, int buflen, u_char *ans, int anssiz) {
 res_state statp = &_res;
 if ((statp->options & RES_INIT) == 0U && res_init() == -1) {

  return (-1);
 }

 return (res_nsend(statp, buf, buflen, ans, anssiz));
}
