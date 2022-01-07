
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ t_startc; scalar_t__ t_stopc; } ;
struct TYPE_4__ {int c_iflag; TYPE_1__ tc; } ;


 int IXON ;
 TYPE_2__ termbuf ;

int
tty_flowmode(void)
{

 return(((termbuf.tc.t_startc) > 0 && (termbuf.tc.t_stopc) > 0) ? 1 : 0);



}
