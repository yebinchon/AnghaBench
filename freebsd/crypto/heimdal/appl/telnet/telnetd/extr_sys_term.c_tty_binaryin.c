
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int c_iflag; } ;


 int ISTRIP ;
 TYPE_1__ termbuf ;

void
tty_binaryin(int on)
{
    if (on) {
 termbuf.c_iflag &= ~ISTRIP;
    } else {
 termbuf.c_iflag |= ISTRIP;
    }
}
