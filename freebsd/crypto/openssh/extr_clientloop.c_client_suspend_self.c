
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sshbuf {int dummy; } ;
struct TYPE_2__ {scalar_t__ request_tty; } ;


 scalar_t__ REQUEST_TTY_FORCE ;
 int SIGTSTP ;
 int atomicio (int ,int ,int ,scalar_t__) ;
 int enter_raw_mode (int) ;
 int fileno (int ) ;
 int getpid () ;
 int kill (int ,int ) ;
 int leave_raw_mode (int) ;
 TYPE_1__ options ;
 int received_window_change_signal ;
 scalar_t__ sshbuf_len (struct sshbuf*) ;
 int sshbuf_mutable_ptr (struct sshbuf*) ;
 int sshbuf_reset (struct sshbuf*) ;
 int stderr ;
 int stdout ;
 int vwrite ;

__attribute__((used)) static void
client_suspend_self(struct sshbuf *bin, struct sshbuf *bout, struct sshbuf *berr)
{

 if (sshbuf_len(bout) > 0)
  atomicio(vwrite, fileno(stdout), sshbuf_mutable_ptr(bout),
      sshbuf_len(bout));
 if (sshbuf_len(berr) > 0)
  atomicio(vwrite, fileno(stderr), sshbuf_mutable_ptr(berr),
      sshbuf_len(berr));

 leave_raw_mode(options.request_tty == REQUEST_TTY_FORCE);

 sshbuf_reset(bin);
 sshbuf_reset(bout);
 sshbuf_reset(berr);


 kill(getpid(), SIGTSTP);


 received_window_change_signal = 1;

 enter_raw_mode(options.request_tty == REQUEST_TTY_FORCE);
}
