
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ws ;
struct winsize {scalar_t__ ws_row; scalar_t__ ws_col; } ;
struct TYPE_2__ {int c_oflag; int c_iflag; int c_lflag; int c_cflag; } ;


 int CS8 ;
 int ECHO ;
 int ECHOE ;
 int ECHOK ;
 int EXTB ;
 int HUPCL ;
 int ICANON ;
 int ICRNL ;
 int IGNPAR ;
 int ISIG ;
 int ISTRIP ;
 int IXOFF ;
 int IXON ;
 int ONLCR ;
 int OPOST ;
 int OXTABS ;
 int O_RDWR ;
 int TAB3 ;
 int TIOCNOTTY ;
 int TIOCSWINSZ ;
 int _PATH_TTY ;
 int cleanopen (char*) ;
 int close (int) ;
 scalar_t__ def_col ;
 scalar_t__ def_row ;
 scalar_t__ def_rspeed ;
 scalar_t__ def_tspeed ;
 int fatalperror (int,char*) ;
 int init_termbuf () ;
 int ioctl (int,int ,char*) ;
 char* line ;
 int login_tty (int) ;
 int maybe_push_modules (int,char**) ;
 int memset (struct winsize*,int ,int) ;
 int net ;
 int open (int ,int ) ;
 int ourpty ;
 scalar_t__ really_stream ;
 int set_termbuf () ;
 scalar_t__ setsid () ;
 TYPE_1__ termbuf ;
 int tty_rspeed (scalar_t__) ;
 int tty_tspeed (scalar_t__) ;
 int ttyfd ;
 int utmp_sig_wait () ;

void getptyslave(void)
{
    int t = -1;

    struct winsize ws;
    t = cleanopen(line);
    if (t < 0)
 fatalperror(net, line);
    init_termbuf();
    termbuf.c_lflag |= ECHO;
    termbuf.c_oflag |= ONLCR|0;
    termbuf.c_iflag |= ICRNL;
    termbuf.c_iflag &= ~IXOFF;

    tty_rspeed((def_rspeed > 0) ? def_rspeed : 9600);
    tty_tspeed((def_tspeed > 0) ? def_tspeed : 9600);




    set_termbuf();
    if (login_tty(t) == -1)
 fatalperror(net, "login_tty");
    if (net > 2)
 close(net);
    if (ourpty > 2) {
 close(ourpty);
 ourpty = -1;
    }
}
