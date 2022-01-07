
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int c_cflag; int c_oflag; } ;


 int CS7 ;
 int CS8 ;
 int CSIZE ;
 int OPOST ;
 int PARENB ;
 TYPE_1__ termbuf ;

void
tty_binaryout(int on)
{
    if (on) {
 termbuf.c_cflag &= ~(CSIZE|PARENB);
 termbuf.c_cflag |= CS8;
 termbuf.c_oflag &= ~OPOST;
    } else {
 termbuf.c_cflag &= ~CSIZE;
 termbuf.c_cflag |= CS7|PARENB;
 termbuf.c_oflag |= OPOST;
    }
}
