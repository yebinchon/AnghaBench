
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ssh {int dummy; } ;
struct TYPE_2__ {scalar_t__ request_tty; } ;


 scalar_t__ REQUEST_TTY_FORCE ;
 int channel_cancel_cleanup (struct ssh*,int) ;
 int leave_raw_mode (int) ;
 TYPE_1__ options ;
 int session_closed ;

__attribute__((used)) static void
client_channel_closed(struct ssh *ssh, int id, void *arg)
{
 channel_cancel_cleanup(ssh, id);
 session_closed = 1;
 leave_raw_mode(options.request_tty == REQUEST_TTY_FORCE);
}
