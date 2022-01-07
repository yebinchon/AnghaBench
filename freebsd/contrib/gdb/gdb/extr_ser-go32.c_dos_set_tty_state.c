
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serial {int dummy; } ;
struct dos_ttystate {int baudrate; } ;
typedef scalar_t__ serial_ttystate ;


 int dos_setbaudrate (struct serial*,int ) ;

__attribute__((used)) static int
dos_set_tty_state (struct serial *scb, serial_ttystate ttystate)
{
  struct dos_ttystate *state;

  state = (struct dos_ttystate *) ttystate;
  dos_setbaudrate (scb, state->baudrate);
  return 0;
}
