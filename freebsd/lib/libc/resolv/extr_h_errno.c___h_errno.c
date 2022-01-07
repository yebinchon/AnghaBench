
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int res_h_errno; } ;


 TYPE_1__* __res_state () ;

int *
__h_errno(void)
{
 return (&__res_state()->res_h_errno);
}
