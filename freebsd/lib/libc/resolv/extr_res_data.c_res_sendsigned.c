
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
typedef TYPE_1__* res_state ;
typedef int ns_tsig_key ;
struct TYPE_4__ {unsigned int options; } ;


 unsigned int RES_INIT ;
 TYPE_1__ _res ;
 int res_init () ;
 int res_nsendsigned (TYPE_1__*,int const*,int,int *,int *,int) ;

int
res_sendsigned(const u_char *buf, int buflen, ns_tsig_key *key,
        u_char *ans, int anssiz)
{
 res_state statp = &_res;
 if ((statp->options & RES_INIT) == 0U && res_init() == -1) {

  return (-1);
 }

 return (res_nsendsigned(statp, buf, buflen, key, ans, anssiz));
}
