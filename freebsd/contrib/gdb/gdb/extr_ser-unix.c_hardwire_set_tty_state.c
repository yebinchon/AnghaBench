
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serial {int dummy; } ;
struct hardwire_ttystate {int dummy; } ;
typedef scalar_t__ serial_ttystate ;


 int set_tty_state (struct serial*,struct hardwire_ttystate*) ;

__attribute__((used)) static int
hardwire_set_tty_state (struct serial *scb, serial_ttystate ttystate)
{
  struct hardwire_ttystate *state;

  state = (struct hardwire_ttystate *) ttystate;

  return set_tty_state (scb, state);
}
