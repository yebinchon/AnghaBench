
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int ws ;
struct winsize {int ws_col; int ws_row; } ;
struct TYPE_3__ {int sg_flags; } ;
struct TYPE_4__ {char* c_cc; TYPE_1__ sg; } ;


 int ANYP ;
 int CRMOD ;
 int ECHO ;
 int O_RDWR ;
 int TIOCNOTTY ;
 int TIOCSWINSZ ;
 size_t VERASE ;
 int XTABS ;
 int _PATH_TTY ;
 int cleanopen (char*) ;
 int close (int) ;
 int fatalperror (int,char*) ;
 int init_termbuf () ;
 int ioctl (int,int ,char*) ;
 char* line ;
 int login_tty (int) ;
 int memset (char*,int ,int) ;
 int net ;
 int open (int ,int ) ;
 int pty ;
 int set_termbuf () ;
 TYPE_2__ termbuf ;
 int tty_linemode () ;
 int tty_rspeed (int) ;
 int tty_setlinemode (int) ;
 int tty_tspeed (int) ;

__attribute__((used)) static void
getptyslave(void)
{
 int t = -1;
 char erase;
 extern int def_tspeed, def_rspeed;
 erase = termbuf.c_cc[VERASE];
 t = cleanopen(line);
 if (t < 0)
  fatalperror(net, line);





 init_termbuf();
 termbuf.sg.sg_flags |= CRMOD|ANYP|ECHO|XTABS;







 tty_rspeed((def_rspeed > 0) ? def_rspeed : 9600);
 tty_tspeed((def_tspeed > 0) ? def_tspeed : 9600);
 if (erase)
  termbuf.c_cc[VERASE] = erase;
 set_termbuf();
 if (login_tty(t) == -1)
  fatalperror(net, "login_tty");
 if (net > 2)
  (void) close(net);
}
