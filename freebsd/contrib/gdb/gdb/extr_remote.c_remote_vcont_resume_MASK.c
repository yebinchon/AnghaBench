#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct remote_state {scalar_t__ remote_packet_size; } ;
struct cleanup {int dummy; } ;
typedef  int /*<<< orphan*/  ptid_t ;
typedef  enum target_signal { ____Placeholder_target_signal } target_signal ;
struct TYPE_2__ {scalar_t__ support; } ;

/* Variables and functions */
 int MAGIC_NULL_PID ; 
 scalar_t__ PACKET_DISABLE ; 
 scalar_t__ PACKET_SUPPORT_UNKNOWN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int TARGET_SIGNAL_0 ; 
 int /*<<< orphan*/  FUNC1 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct remote_state* FUNC3 () ; 
 int /*<<< orphan*/  inferior_ptid ; 
 struct cleanup* FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 TYPE_1__ remote_protocol_vcont ; 
 int /*<<< orphan*/  FUNC6 (struct remote_state*,char*) ; 
 scalar_t__ FUNC7 (char*) ; 
 int /*<<< orphan*/  xfree ; 
 char* FUNC8 (scalar_t__) ; 
 char* FUNC9 (char*,...) ; 

__attribute__((used)) static int
FUNC10 (ptid_t ptid, int step, enum target_signal siggnal)
{
  struct remote_state *rs = FUNC3 ();
  int pid = FUNC0 (ptid);
  char *buf = NULL, *outbuf;
  struct cleanup *old_cleanup;

  buf = FUNC8 (rs->remote_packet_size);
  old_cleanup = FUNC4 (xfree, buf);

  if (remote_protocol_vcont.support == PACKET_SUPPORT_UNKNOWN)
    FUNC6 (rs, buf);

  if (remote_protocol_vcont.support == PACKET_DISABLE)
    {
      FUNC1 (old_cleanup);
      return 0;
    }

  /* If we could generate a wider range of packets, we'd have to worry
     about overflowing BUF.  Should there be a generic
     "multi-part-packet" packet?  */

  if (FUNC0 (inferior_ptid) == MAGIC_NULL_PID)
    {
      /* MAGIC_NULL_PTID means that we don't have any active threads, so we
	 don't have any PID numbers the inferior will understand.  Make sure
	 to only send forms that do not specify a PID.  */
      if (step && siggnal != TARGET_SIGNAL_0)
	outbuf = FUNC9 ("vCont;S%02x", siggnal);
      else if (step)
	outbuf = FUNC9 ("vCont;s");
      else if (siggnal != TARGET_SIGNAL_0)
	outbuf = FUNC9 ("vCont;C%02x", siggnal);
      else
	outbuf = FUNC9 ("vCont;c");
    }
  else if (pid == -1)
    {
      /* Resume all threads, with preference for INFERIOR_PTID.  */
      if (step && siggnal != TARGET_SIGNAL_0)
	outbuf = FUNC9 ("vCont;S%02x:%x;c", siggnal,
			     FUNC0 (inferior_ptid));
      else if (step)
	outbuf = FUNC9 ("vCont;s:%x;c", FUNC0 (inferior_ptid));
      else if (siggnal != TARGET_SIGNAL_0)
	outbuf = FUNC9 ("vCont;C%02x:%x;c", siggnal,
			     FUNC0 (inferior_ptid));
      else
	outbuf = FUNC9 ("vCont;c");
    }
  else
    {
      /* Scheduler locking; resume only PTID.  */
      if (step && siggnal != TARGET_SIGNAL_0)
	outbuf = FUNC9 ("vCont;S%02x:%x", siggnal, pid);
      else if (step)
	outbuf = FUNC9 ("vCont;s:%x", pid);
      else if (siggnal != TARGET_SIGNAL_0)
	outbuf = FUNC9 ("vCont;C%02x:%x", siggnal, pid);
      else
	outbuf = FUNC9 ("vCont;c:%x", pid);
    }

  FUNC2 (outbuf && FUNC7 (outbuf) < rs->remote_packet_size);
  FUNC4 (xfree, outbuf);

  FUNC5 (outbuf);

  FUNC1 (old_cleanup);

  return 1;
}