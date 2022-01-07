
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
typedef TYPE_1__* res_state ;
struct TYPE_4__ {unsigned int options; } ;
typedef int FILE ;


 unsigned int RES_INIT ;
 TYPE_1__ _res ;
 int res_init () ;
 int res_pquery (TYPE_1__*,int const*,int,int *) ;

void
fp_nquery(const u_char *msg, int len, FILE *file) {
 res_state statp = &_res;
 if ((statp->options & RES_INIT) == 0U && res_init() == -1)
  return;

 res_pquery(statp, msg, len, file);
}
