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
struct tracepoint {int /*<<< orphan*/  line_number; int /*<<< orphan*/ * source_file; int /*<<< orphan*/  address; int /*<<< orphan*/  number; } ;

/* Variables and functions */
 scalar_t__ addressprint ; 
 int /*<<< orphan*/  gdb_stdout ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void
FUNC2 (struct tracepoint *tp)
{
  FUNC1 ("Tracepoint %d", tp->number);

  if (addressprint || (tp->source_file == NULL))
    {
      FUNC1 (" at ");
      FUNC0 (tp->address, 1, gdb_stdout);
    }
  if (tp->source_file)
    FUNC1 (": file %s, line %d.",
		     tp->source_file, tp->line_number);

  FUNC1 ("\n");
}