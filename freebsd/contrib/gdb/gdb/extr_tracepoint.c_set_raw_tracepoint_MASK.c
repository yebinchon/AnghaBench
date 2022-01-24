#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tracepoint {int enabled_p; struct tracepoint* next; int /*<<< orphan*/ * addr_string; scalar_t__ pass_count; scalar_t__ step_count; int /*<<< orphan*/  line_number; int /*<<< orphan*/  input_radix; int /*<<< orphan*/  language; int /*<<< orphan*/  section; int /*<<< orphan*/ * source_file; int /*<<< orphan*/  address; } ;
struct symtab_and_line {int /*<<< orphan*/  line; int /*<<< orphan*/  section; TYPE_1__* symtab; int /*<<< orphan*/  pc; } ;
struct cleanup {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  la_language; } ;
struct TYPE_3__ {int /*<<< orphan*/  filename; } ;

/* Variables and functions */
 TYPE_2__* current_language ; 
 int /*<<< orphan*/  FUNC0 (struct cleanup*) ; 
 int /*<<< orphan*/  input_radix ; 
 struct cleanup* FUNC1 (int /*<<< orphan*/ ,struct tracepoint*) ; 
 int /*<<< orphan*/  FUNC2 (struct tracepoint*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct tracepoint* tracepoint_chain ; 
 int /*<<< orphan*/  xfree ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static struct tracepoint *
FUNC6 (struct symtab_and_line sal)
{
  struct tracepoint *t, *tc;
  struct cleanup *old_chain;

  t = (struct tracepoint *) FUNC5 (sizeof (struct tracepoint));
  old_chain = FUNC1 (xfree, t);
  FUNC2 (t, 0, sizeof (*t));
  t->address = sal.pc;
  if (sal.symtab == NULL)
    t->source_file = NULL;
  else
    t->source_file = FUNC3 (sal.symtab->filename,
				 FUNC4 (sal.symtab->filename));

  t->section = sal.section;
  t->language = current_language->la_language;
  t->input_radix = input_radix;
  t->line_number = sal.line;
  t->enabled_p = 1;
  t->next = 0;
  t->step_count = 0;
  t->pass_count = 0;
  t->addr_string = NULL;

  /* Add this tracepoint to the end of the chain
     so that a list of tracepoints will come out in order
     of increasing numbers.  */

  tc = tracepoint_chain;
  if (tc == 0)
    tracepoint_chain = t;
  else
    {
      while (tc->next)
	tc = tc->next;
      tc->next = t;
    }
  FUNC0 (old_chain);
  return t;
}