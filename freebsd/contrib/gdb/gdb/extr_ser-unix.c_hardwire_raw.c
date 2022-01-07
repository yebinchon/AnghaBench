
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct serial {scalar_t__ current_timeout; } ;
struct TYPE_6__ {int sg_flags; } ;
struct TYPE_5__ {int c_cflag; scalar_t__* c_cc; scalar_t__ c_lflag; scalar_t__ c_oflag; scalar_t__ c_iflag; } ;
struct TYPE_4__ {int c_cflag; scalar_t__* c_cc; scalar_t__ c_lflag; scalar_t__ c_oflag; scalar_t__ c_iflag; } ;
struct hardwire_ttystate {TYPE_3__ sgttyb; TYPE_2__ termio; TYPE_1__ termios; } ;


 int ANYP ;
 int CBREAK ;
 int CLOCAL ;
 int CS8 ;
 int CSIZE ;
 int ECHO ;
 int PARENB ;
 int RAW ;
 size_t VMIN ;
 size_t VTIME ;
 int errno ;
 int fprintf_unfiltered (int ,char*,int ) ;
 int gdb_stderr ;
 scalar_t__ get_tty_state (struct serial*,struct hardwire_ttystate*) ;
 int safe_strerror (int ) ;
 scalar_t__ set_tty_state (struct serial*,struct hardwire_ttystate*) ;

__attribute__((used)) static void
hardwire_raw (struct serial *scb)
{
  struct hardwire_ttystate state;

  if (get_tty_state (scb, &state))
    fprintf_unfiltered (gdb_stderr, "get_tty_state failed: %s\n", safe_strerror (errno));
  scb->current_timeout = 0;

  if (set_tty_state (scb, &state))
    fprintf_unfiltered (gdb_stderr, "set_tty_state failed: %s\n", safe_strerror (errno));
}
