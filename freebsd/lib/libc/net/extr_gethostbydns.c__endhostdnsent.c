
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* res_state ;
struct TYPE_4__ {int options; } ;


 int RES_STAYOPEN ;
 int RES_USEVC ;
 TYPE_1__* __res_state () ;
 int res_nclose (TYPE_1__*) ;

void
_endhostdnsent(void)
{
 res_state statp;

 statp = __res_state();
 statp->options &= ~(RES_STAYOPEN | RES_USEVC);
 res_nclose(statp);
}
