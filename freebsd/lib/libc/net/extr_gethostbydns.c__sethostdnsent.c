
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* res_state ;
struct TYPE_4__ {int options; } ;


 int RES_INIT ;
 int RES_STAYOPEN ;
 int RES_USEVC ;
 TYPE_1__* __res_state () ;
 int res_ninit (TYPE_1__*) ;

void
_sethostdnsent(int stayopen)
{
 res_state statp;

 statp = __res_state();
 if ((statp->options & RES_INIT) == 0 && res_ninit(statp) == -1)
  return;
 if (stayopen)
  statp->options |= RES_STAYOPEN | RES_USEVC;
}
