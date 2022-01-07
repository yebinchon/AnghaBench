
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct termios {int c_cflag; int c_lflag; int c_oflag; int c_iflag; } ;
struct TYPE_4__ {int c_cflag; int c_lflag; int c_oflag; int c_iflag; } ;


 int CLOCAL ;
 int LOG_ERR ;
 scalar_t__ NC ;
 int STDIN_FILENO ;
 int cfmakesane (struct termios*) ;
 int dogettytab () ;
 int exit (int) ;
 TYPE_1__ omode ;
 int syslog (int ,char*,int ) ;
 scalar_t__ tcgetattr (int ,TYPE_1__*) ;
 TYPE_1__ tmode ;
 int ttyn ;

__attribute__((used)) static void
defttymode(void)
{
 struct termios def;


 if (tcgetattr(STDIN_FILENO, &tmode) < 0) {
  syslog(LOG_ERR, "tcgetattr %s: %m", ttyn);
  exit(1);
 }
 omode = tmode;
 dogettytab();







 cfmakesane(&def);
 tmode.c_iflag = def.c_iflag;
 tmode.c_oflag = def.c_oflag;
 tmode.c_lflag = def.c_lflag;
 tmode.c_cflag = def.c_cflag;
 if (NC)
  tmode.c_cflag |= CLOCAL;
 omode = tmode;
}
