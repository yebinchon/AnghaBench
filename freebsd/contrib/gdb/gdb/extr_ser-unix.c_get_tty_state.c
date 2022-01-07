
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serial {int fd; } ;
struct hardwire_ttystate {int lmode; int ltc; int tc; int sgttyb; int termio; int termios; } ;


 int TCGETA ;
 int TIOCGETC ;
 int TIOCGETP ;
 int TIOCGLTC ;
 int TIOCLGET ;
 scalar_t__ ioctl (int ,int ,int *) ;
 scalar_t__ tcgetattr (int ,int *) ;

__attribute__((used)) static int
get_tty_state (struct serial *scb, struct hardwire_ttystate *state)
{
}
