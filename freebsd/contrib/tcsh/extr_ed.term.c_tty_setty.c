
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int d_ltc; int d_lb; int d_pc; int d_tc; int d_t; } ;
typedef TYPE_1__ ttydata_t ;
typedef int ioctl_t ;


 int RETRY (int ) ;
 int TCSADRAIN ;
 int TCSETAW ;
 int TIOCLSET ;
 int TIOCSETC ;
 int TIOCSETN ;
 int TIOCSLTC ;
 int TIOCSPAGE ;
 int ioctl (int,int ,int ) ;
 int xtcsetattr (int,int ,int *) ;

int
tty_setty(int fd, ttydata_t *td)
{
    return 0;
}
