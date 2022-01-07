
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serial {int fd; } ;
struct hardwire_ttystate {int lmode; int ltc; int tc; int sgttyb; int termio; int termios; } ;


 int TCSANOW ;
 int TCSETA ;
 int TIOCLSET ;
 int TIOCSETC ;
 int TIOCSETN ;
 int TIOCSLTC ;
 scalar_t__ ioctl (int ,int ,int *) ;
 scalar_t__ tcsetattr (int ,int ,int *) ;

__attribute__((used)) static int
set_tty_state (struct serial *scb, struct hardwire_ttystate *state)
{
}
