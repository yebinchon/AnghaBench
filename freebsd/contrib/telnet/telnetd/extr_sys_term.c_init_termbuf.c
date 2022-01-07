
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int state; int ltc; int tc; int sg; } ;


 int TIOCGETC ;
 int TIOCGETP ;
 int TIOCGLTC ;
 int TIOCGSTATE ;
 int ioctl (int ,int ,char*) ;
 int pty ;
 int tcgetattr (int ,TYPE_1__*) ;
 TYPE_1__ termbuf ;
 TYPE_1__ termbuf2 ;

void
init_termbuf(void)
{

 (void) ioctl(pty, TIOCGETP, (char *)&termbuf.sg);
 (void) ioctl(pty, TIOCGETC, (char *)&termbuf.tc);
 (void) ioctl(pty, TIOCGLTC, (char *)&termbuf.ltc);






 termbuf2 = termbuf;
}
