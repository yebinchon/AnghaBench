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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int RDIError_NoError ; 
 int FUNC1 () ; 
 int closed_already ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  null_ptid ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void
FUNC5 (int quitting)
{
  int rslt;

  if (!closed_already)
    {
      rslt = FUNC1 ();
      if (rslt != RDIError_NoError)
	{
	  FUNC3 ("RDI_close: %s\n", FUNC4 (rslt));
	}
      closed_already = 1;
      inferior_ptid = null_ptid;
      FUNC0 ();
      FUNC2 ();
    }
}