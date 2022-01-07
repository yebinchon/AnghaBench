
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serial {int dummy; } ;
struct hardwire_ttystate {int dummy; } ;
typedef int * serial_ttystate ;


 scalar_t__ get_tty_state (struct serial*,struct hardwire_ttystate*) ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static serial_ttystate
hardwire_get_tty_state (struct serial *scb)
{
  struct hardwire_ttystate *state;

  state = (struct hardwire_ttystate *) xmalloc (sizeof *state);

  if (get_tty_state (scb, state))
    return ((void*)0);

  return (serial_ttystate) state;
}
