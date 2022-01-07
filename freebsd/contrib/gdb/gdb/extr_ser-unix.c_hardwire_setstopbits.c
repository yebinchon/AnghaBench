
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct serial {int dummy; } ;
struct TYPE_4__ {int c_cflag; } ;
struct TYPE_3__ {int c_cflag; } ;
struct hardwire_ttystate {TYPE_2__ termio; TYPE_1__ termios; } ;


 int CSTOPB ;



 scalar_t__ get_tty_state (struct serial*,struct hardwire_ttystate*) ;
 int set_tty_state (struct serial*,struct hardwire_ttystate*) ;

__attribute__((used)) static int
hardwire_setstopbits (struct serial *scb, int num)
{
  struct hardwire_ttystate state;
  int newbit;

  if (get_tty_state (scb, &state))
    return -1;

  switch (num)
    {
    case 129:
      newbit = 0;
      break;
    case 130:
    case 128:
      newbit = 1;
      break;
    default:
      return 1;
    }
  return set_tty_state (scb, &state);
}
