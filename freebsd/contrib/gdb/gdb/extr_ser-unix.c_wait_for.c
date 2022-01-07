
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct serial {int current_timeout; int timeout_remaining; scalar_t__ fd; } ;
struct TYPE_4__ {int* c_cc; } ;
struct TYPE_3__ {int* c_cc; } ;
struct hardwire_ttystate {TYPE_2__ termio; TYPE_1__ termios; } ;
typedef int fd_set ;


 scalar_t__ EINTR ;
 int FD_SET (scalar_t__,int *) ;
 int FD_ZERO (int *) ;
 int SERIAL_ERROR ;
 int SERIAL_TIMEOUT ;
 size_t VMIN ;
 size_t VTIME ;
 scalar_t__ errno ;
 int fprintf_unfiltered (int ,char*,int ) ;
 int gdb_stderr ;
 scalar_t__ get_tty_state (struct serial*,struct hardwire_ttystate*) ;
 int safe_strerror (scalar_t__) ;
 int select (scalar_t__,int *,int ,int ,struct timeval*) ;
 scalar_t__ set_tty_state (struct serial*,struct hardwire_ttystate*) ;

__attribute__((used)) static int
wait_for (struct serial *scb, int timeout)
{
}
