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
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  log_file ; 

__attribute__((used)) static void
FUNC2 (int discard)
{
#if defined (LOG_FILE)
  /* This is a convenient place to do this.  The idea is to do it often
     enough that we never lose much data if we terminate abnormally.  */
  fflush (log_file);
#endif
  FUNC0 ("dbug> ", discard);
}