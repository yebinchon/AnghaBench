
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int c_lflag; int lflags; } ;


 int ECHOCTL ;
 int LCTLECH ;
 int TCTLECH ;
 TYPE_1__ termbuf ;

void
tty_setlitecho(int on)
{

 if (on)
  termbuf.lflags &= ~LCTLECH;
 else
  termbuf.lflags |= LCTLECH;
}
