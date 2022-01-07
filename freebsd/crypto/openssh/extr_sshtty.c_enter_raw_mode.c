
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termios {int c_iflag; int c_lflag; int* c_cc; int c_oflag; } ;


 int ECHO ;
 int ECHOE ;
 int ECHOK ;
 int ECHONL ;
 int ICANON ;
 int ICRNL ;
 int IEXTEN ;
 int IGNCR ;
 int IGNPAR ;
 int INLCR ;
 int ISIG ;
 int ISTRIP ;
 int IUCLC ;
 int IXANY ;
 int IXOFF ;
 int IXON ;
 int OPOST ;
 int TCSADRAIN ;
 size_t VMIN ;
 size_t VTIME ;
 int _in_raw_mode ;
 struct termios _saved_tio ;
 int fileno (int ) ;
 int perror (char*) ;
 int stdin ;
 int tcgetattr (int ,struct termios*) ;
 int tcsetattr (int ,int ,struct termios*) ;

void
enter_raw_mode(int quiet)
{
 struct termios tio;

 if (tcgetattr(fileno(stdin), &tio) == -1) {
  if (!quiet)
   perror("tcgetattr");
  return;
 }
 _saved_tio = tio;
 tio.c_iflag |= IGNPAR;
 tio.c_iflag &= ~(ISTRIP | INLCR | IGNCR | ICRNL | IXON | IXANY | IXOFF);



 tio.c_lflag &= ~(ISIG | ICANON | ECHO | ECHOE | ECHOK | ECHONL);



 tio.c_oflag &= ~OPOST;
 tio.c_cc[VMIN] = 1;
 tio.c_cc[VTIME] = 0;
 if (tcsetattr(fileno(stdin), TCSADRAIN, &tio) == -1) {
  if (!quiet)
   perror("tcsetattr");
 } else
  _in_raw_mode = 1;
}
