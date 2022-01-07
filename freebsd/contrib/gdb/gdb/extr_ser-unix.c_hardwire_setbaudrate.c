
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct serial {int dummy; } ;
struct TYPE_4__ {int sg_ispeed; int sg_ospeed; } ;
struct TYPE_3__ {int c_cflag; } ;
struct hardwire_ttystate {TYPE_2__ sgttyb; TYPE_1__ termio; int termios; } ;


 int CBAUD ;
 int CIBAUD ;
 int EINVAL ;
 int cfsetispeed (int *,int) ;
 int cfsetospeed (int *,int) ;
 int errno ;
 scalar_t__ get_tty_state (struct serial*,struct hardwire_ttystate*) ;
 int rate_to_code (int) ;
 int set_tty_state (struct serial*,struct hardwire_ttystate*) ;

__attribute__((used)) static int
hardwire_setbaudrate (struct serial *scb, int rate)
{
  struct hardwire_ttystate state;
  int baud_code = rate_to_code (rate);

  if (baud_code < 0)
    {


      errno = EINVAL;
      return -1;
    }

  if (get_tty_state (scb, &state))
    return -1;
  return set_tty_state (scb, &state);
}
