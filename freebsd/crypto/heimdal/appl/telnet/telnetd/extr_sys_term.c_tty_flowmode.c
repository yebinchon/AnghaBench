
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int c_iflag; } ;


 int IXON ;
 TYPE_1__ termbuf ;

int
tty_flowmode(void)
{
    return((termbuf.c_iflag & IXON) ? 1 : 0);
}
