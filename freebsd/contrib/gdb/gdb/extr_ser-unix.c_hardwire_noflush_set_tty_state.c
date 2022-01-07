
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct serial {int dummy; } ;
struct TYPE_2__ {int sg_flags; } ;
struct hardwire_ttystate {TYPE_1__ sgttyb; } ;
typedef scalar_t__ serial_ttystate ;


 int CBREAK ;
 int RAW ;
 int set_tty_state (struct serial*,struct hardwire_ttystate*) ;

__attribute__((used)) static int
hardwire_noflush_set_tty_state (struct serial *scb,
    serial_ttystate new_ttystate,
    serial_ttystate old_ttystate)
{
  struct hardwire_ttystate new_state;




  new_state = *(struct hardwire_ttystate *) new_ttystate;
  return set_tty_state (scb, &new_state);
}
