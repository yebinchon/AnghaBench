
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int c_cflag; int c_oflag; int lflags; } ;


 int CS7 ;
 int CS8 ;
 int CSIZE ;
 int LLITOUT ;
 int OPOST ;
 int PARENB ;
 TYPE_1__ termbuf ;

void
tty_binaryout(int on)
{

 if (on)
  termbuf.lflags |= LLITOUT;
 else
  termbuf.lflags &= ~LLITOUT;
}
