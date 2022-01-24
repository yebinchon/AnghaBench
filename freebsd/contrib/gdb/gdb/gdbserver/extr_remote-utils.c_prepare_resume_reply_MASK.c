#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct inferior_list_entry {int id; } ;

/* Variables and functions */
 scalar_t__ current_inferior ; 
 scalar_t__ debug_threads ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 char** gdbserver_expedite_regs ; 
 int general_thread ; 
 int old_thread_from_wait ; 
 char* FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (unsigned char) ; 
 int thread_from_wait ; 
 void* FUNC6 (int) ; 
 scalar_t__ using_threads ; 

void
FUNC7 (char *buf, char status, unsigned char signo)
{
  int nib, sig;

  *buf++ = status;

  sig = (int)FUNC5 (signo);

  nib = ((sig & 0xf0) >> 4);
  *buf++ = FUNC6 (nib);
  nib = sig & 0x0f;
  *buf++ = FUNC6 (nib);

  if (status == 'T')
    {
      const char **regp = gdbserver_expedite_regs;
      while (*regp)
	{
	  buf = FUNC2 (FUNC0 (*regp), buf);
	  regp ++;
	}

      /* Formerly, if the debugger had not used any thread features we would not
	 burden it with a thread status response.  This was for the benefit of
	 GDB 4.13 and older.  However, in recent GDB versions the check
	 (``if (cont_thread != 0)'') does not have the desired effect because of
	 sillyness in the way that the remote protocol handles specifying a thread.
	 Since thread support relies on qSymbol support anyway, assume GDB can handle
	 threads.  */

      if (using_threads)
	{
	  /* FIXME right place to set this? */
	  thread_from_wait = ((struct inferior_list_entry *)current_inferior)->id;
	  if (debug_threads)
	    FUNC1 (stderr, "Writing resume reply for %d\n\n", thread_from_wait);
	  /* This if (1) ought to be unnecessary.  But remote_wait in GDB
	     will claim this event belongs to inferior_ptid if we do not
	     specify a thread, and there's no way for gdbserver to know
	     what inferior_ptid is.  */
	  if (1 || old_thread_from_wait != thread_from_wait)
	    {
	      general_thread = thread_from_wait;
	      FUNC3 (buf, "thread:%x;", thread_from_wait);
	      buf += FUNC4 (buf);
	      old_thread_from_wait = thread_from_wait;
	    }
	}
    }
  /* For W and X, we're done.  */
  *buf++ = 0;
}