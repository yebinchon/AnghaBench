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
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void
FUNC4 (char *args, int from_tty, int flags)
{
  FUNC3 (args, from_tty, NULL, 1, flags);

#ifdef HPUXHPPA
  RESET_HP_UX_GLOBALS ();
#endif

  /* Getting new symbols may change our opinion about
     what is frameless.  */
  FUNC1 ();

  FUNC2 ();
}