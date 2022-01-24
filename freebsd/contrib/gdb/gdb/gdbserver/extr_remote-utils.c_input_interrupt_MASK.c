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
struct timeval {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  fd_set ;
struct TYPE_2__ {int /*<<< orphan*/  (* send_signal ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,char) ; 
 int FUNC3 (scalar_t__,char*,int) ; 
 scalar_t__ remote_desc ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct timeval*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* the_target ; 

__attribute__((used)) static void
FUNC6 (int unused)
{
  fd_set readset;
  struct timeval immediate = { 0, 0 };

  /* Protect against spurious interrupts.  This has been observed to
     be a problem under NetBSD 1.4 and 1.5.  */

  FUNC1 (&readset);
  FUNC0 (remote_desc, &readset);
  if (FUNC4 (remote_desc + 1, &readset, 0, 0, &immediate) > 0)
    {
      int cc;
      char c;
      
      cc = FUNC3 (remote_desc, &c, 1);

      if (cc != 1 || c != '\003')
	{
	  FUNC2 (stderr, "input_interrupt, cc = %d c = %hhd\n", cc, c);
	  return;
	}
      
      (*the_target->send_signal) (SIGINT);
    }
}