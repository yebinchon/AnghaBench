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
typedef  int /*<<< orphan*/  id ;
typedef  int gdb_wince_id ;
typedef  int /*<<< orphan*/  WCHAR ;

/* Variables and functions */
#define  GDB_CLOSEHANDLE 141 
#define  GDB_CONTINUEDEBUGEVENT 140 
#define  GDB_CREATEPROCESS 139 
#define  GDB_GETTHREADCONTEXT 138 
#define  GDB_READPROCESSMEMORY 137 
#define  GDB_RESUMETHREAD 136 
#define  GDB_SETTHREADCONTEXT 135 
#define  GDB_SINGLESTEP 134 
#define  GDB_STOPSTUB 133 
#define  GDB_SUSPENDTHREAD 132 
#define  GDB_TERMINATEPROCESS 131 
#define  GDB_THREADALIVE 130 
#define  GDB_WAITFORDEBUGEVENT 129 
#define  GDB_WRITEPROCESSMEMORY 128 
 int /*<<< orphan*/  MB_ICONERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int skip_next_id ; 
 scalar_t__ FUNC9 (char*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static void
FUNC16 (int s)
{
  gdb_wince_id id;

  /* Continue reading from socket until receive a GDB_STOPSUB. */
  while (FUNC9 (L"Dispatch", s, &id, sizeof (id)) > 0)
    {
      skip_next_id = 1;
      switch (id)
	{
	case GDB_CREATEPROCESS:
	  FUNC3 (s);
	  break;
	case GDB_TERMINATEPROCESS:
	  FUNC11 (s);
	  break;
	case GDB_WAITFORDEBUGEVENT:
	  FUNC13 (s);
	  break;
	case GDB_GETTHREADCONTEXT:
	  FUNC5 (s);
	  break;
	case GDB_SETTHREADCONTEXT:
	  FUNC8 (s);
	  break;
	case GDB_READPROCESSMEMORY:
	  FUNC6 (s);
	  break;
	case GDB_WRITEPROCESSMEMORY:
	  FUNC14 (s);
	  break;
	case GDB_THREADALIVE:
	  FUNC12 (s);
	  break;
	case GDB_SUSPENDTHREAD:
	  FUNC10 (s);
	  break;
	case GDB_RESUMETHREAD:
	  FUNC7 (s);
	  break;
	case GDB_CONTINUEDEBUGEVENT:
	  FUNC2 (s);
	  break;
	case GDB_CLOSEHANDLE:
	  FUNC1 (s);
	  break;
	case GDB_STOPSTUB:
	  FUNC11 (s);
	  return;
	case GDB_SINGLESTEP:
	  FUNC4 (s);
	  break;
	default:
	  {
	    WCHAR buf[80];
	    FUNC15 (buf, L"Invalid command id received: %d", id);
	    FUNC0 (NULL, buf, L"GDB", MB_ICONERROR);
	    skip_next_id = 0;
	  }
	}
    }
}