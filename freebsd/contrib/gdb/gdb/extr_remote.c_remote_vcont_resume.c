
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct remote_state {scalar_t__ remote_packet_size; } ;
struct cleanup {int dummy; } ;
typedef int ptid_t ;
typedef enum target_signal { ____Placeholder_target_signal } target_signal ;
struct TYPE_2__ {scalar_t__ support; } ;


 int MAGIC_NULL_PID ;
 scalar_t__ PACKET_DISABLE ;
 scalar_t__ PACKET_SUPPORT_UNKNOWN ;
 int PIDGET (int ) ;
 int TARGET_SIGNAL_0 ;
 int do_cleanups (struct cleanup*) ;
 int gdb_assert (int ) ;
 struct remote_state* get_remote_state () ;
 int inferior_ptid ;
 struct cleanup* make_cleanup (int ,char*) ;
 int putpkt (char*) ;
 TYPE_1__ remote_protocol_vcont ;
 int remote_vcont_probe (struct remote_state*,char*) ;
 scalar_t__ strlen (char*) ;
 int xfree ;
 char* xmalloc (scalar_t__) ;
 char* xstrprintf (char*,...) ;

__attribute__((used)) static int
remote_vcont_resume (ptid_t ptid, int step, enum target_signal siggnal)
{
  struct remote_state *rs = get_remote_state ();
  int pid = PIDGET (ptid);
  char *buf = ((void*)0), *outbuf;
  struct cleanup *old_cleanup;

  buf = xmalloc (rs->remote_packet_size);
  old_cleanup = make_cleanup (xfree, buf);

  if (remote_protocol_vcont.support == PACKET_SUPPORT_UNKNOWN)
    remote_vcont_probe (rs, buf);

  if (remote_protocol_vcont.support == PACKET_DISABLE)
    {
      do_cleanups (old_cleanup);
      return 0;
    }





  if (PIDGET (inferior_ptid) == MAGIC_NULL_PID)
    {



      if (step && siggnal != TARGET_SIGNAL_0)
 outbuf = xstrprintf ("vCont;S%02x", siggnal);
      else if (step)
 outbuf = xstrprintf ("vCont;s");
      else if (siggnal != TARGET_SIGNAL_0)
 outbuf = xstrprintf ("vCont;C%02x", siggnal);
      else
 outbuf = xstrprintf ("vCont;c");
    }
  else if (pid == -1)
    {

      if (step && siggnal != TARGET_SIGNAL_0)
 outbuf = xstrprintf ("vCont;S%02x:%x;c", siggnal,
        PIDGET (inferior_ptid));
      else if (step)
 outbuf = xstrprintf ("vCont;s:%x;c", PIDGET (inferior_ptid));
      else if (siggnal != TARGET_SIGNAL_0)
 outbuf = xstrprintf ("vCont;C%02x:%x;c", siggnal,
        PIDGET (inferior_ptid));
      else
 outbuf = xstrprintf ("vCont;c");
    }
  else
    {

      if (step && siggnal != TARGET_SIGNAL_0)
 outbuf = xstrprintf ("vCont;S%02x:%x", siggnal, pid);
      else if (step)
 outbuf = xstrprintf ("vCont;s:%x", pid);
      else if (siggnal != TARGET_SIGNAL_0)
 outbuf = xstrprintf ("vCont;C%02x:%x", siggnal, pid);
      else
 outbuf = xstrprintf ("vCont;c:%x", pid);
    }

  gdb_assert (outbuf && strlen (outbuf) < rs->remote_packet_size);
  make_cleanup (xfree, outbuf);

  putpkt (outbuf);

  do_cleanups (old_cleanup);

  return 1;
}
