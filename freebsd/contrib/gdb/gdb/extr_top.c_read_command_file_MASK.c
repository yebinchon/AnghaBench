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
struct cleanup {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct cleanup*) ; 
 int /*<<< orphan*/  do_restore_instream_cleanup ; 
 int /*<<< orphan*/ * instream ; 
 struct cleanup* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC3 (FILE *stream)
{
  struct cleanup *cleanups;

  cleanups = FUNC2 (do_restore_instream_cleanup, instream);
  instream = stream;
  FUNC0 ();
  FUNC1 (cleanups);
}