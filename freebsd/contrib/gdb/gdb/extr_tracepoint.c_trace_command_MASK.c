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
struct tracepoint {char* addr_string; scalar_t__ number; } ;
struct symtabs_and_lines {int nelts; struct symtab_and_line* sals; } ;
struct symtab_and_line {int dummy; } ;
struct symtab {int dummy; } ;

/* Variables and functions */
 struct symtabs_and_lines FUNC0 (char**,int,struct symtab*,int /*<<< orphan*/ ,char***,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ info_verbose ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct symtab_and_line*) ; 
 char* FUNC4 (char*,int) ; 
 struct tracepoint* FUNC5 (struct symtab_and_line) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct tracepoint*) ; 
 scalar_t__ tracepoint_count ; 

__attribute__((used)) static void
FUNC8 (char *arg, int from_tty)
{
  char **canonical = (char **) NULL;
  struct symtabs_and_lines sals;
  struct symtab_and_line sal;
  struct tracepoint *t;
  char *addr_start = 0, *addr_end = 0;
  int i;

  if (!arg || !*arg)
    FUNC1 ("trace command requires an argument");

  if (from_tty && info_verbose)
    FUNC2 ("TRACE %s\n", arg);

  addr_start = arg;
  sals = FUNC0 (&arg, 1, (struct symtab *) NULL, 0, &canonical, NULL);
  addr_end = arg;
  if (!sals.nelts)
    return;			/* ??? Presumably decode_line_1 has already warned? */

  /* Resolve all line numbers to PC's */
  for (i = 0; i < sals.nelts; i++)
    FUNC3 (&sals.sals[i]);

  /* Now set all the tracepoints.  */
  for (i = 0; i < sals.nelts; i++)
    {
      sal = sals.sals[i];

      t = FUNC5 (sal);
      FUNC6 (tracepoint_count + 1);
      t->number = tracepoint_count;

      /* If a canonical line spec is needed use that instead of the
         command string.  */
      if (canonical != (char **) NULL && canonical[i] != NULL)
	t->addr_string = canonical[i];
      else if (addr_start)
	t->addr_string = FUNC4 (addr_start, addr_end - addr_start);

      FUNC7 (t);
    }

  if (sals.nelts > 1)
    {
      FUNC2 ("Multiple tracepoints were set.\n");
      FUNC2 ("Use 'delete trace' to delete unwanted tracepoints.\n");
    }
}