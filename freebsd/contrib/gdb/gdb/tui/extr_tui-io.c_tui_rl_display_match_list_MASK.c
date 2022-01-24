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
struct TYPE_3__ {int width; } ;
struct TYPE_4__ {TYPE_1__ generic; } ;
typedef  int /*<<< orphan*/  QSFUNC ;

/* Variables and functions */
 TYPE_2__* TUI_CMD_WIN ; 
 scalar_t__ FUNC0 () ; 
 int FUNC1 (char*,char*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char**,int,int,int /*<<< orphan*/ *) ; 
 int rl_completion_query_items ; 
 scalar_t__ rl_ignore_completion_duplicates ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void
FUNC7 (char **matches, int len, int max)
{
  typedef int QSFUNC (const void *, const void *);
  extern int FUNC8 (char **, char **);
  extern int _rl_print_completions_horizontally;
  
  int count, limit, printed_len;
  int i, j, k, l;
  char *temp;

  /* Screen dimension correspond to the TUI command window.  */
  int screenwidth = TUI_CMD_WIN->generic.width;

  /* If there are many items, then ask the user if she really wants to
     see them all. */
  if (len >= rl_completion_query_items)
    {
      char msg[256];

      FUNC4 (msg, "\nDisplay all %d possibilities? (y or n)", len);
      FUNC6 (msg);
      if (FUNC0 () == 0)
	{
	  FUNC6 ("\n");
	  return;
	}
    }

  /* How many items of MAX length can we fit in the screen window? */
  max += 2;
  limit = screenwidth / max;
  if (limit != 1 && (limit * max == screenwidth))
    limit--;

  /* Avoid a possible floating exception.  If max > screenwidth,
     limit will be 0 and a divide-by-zero fault will result. */
  if (limit == 0)
    limit = 1;

  /* How many iterations of the printing loop? */
  count = (len + (limit - 1)) / limit;

  /* Watch out for special case.  If LEN is less than LIMIT, then
     just do the inner printing loop.
	   0 < len <= limit  implies  count = 1. */

  /* Sort the items if they are not already sorted. */
  if (rl_ignore_completion_duplicates == 0)
    FUNC3 (matches + 1, len, sizeof (char *),
           (QSFUNC *)_rl_qsort_string_compare);

  FUNC5 ('\n');

  if (_rl_print_completions_horizontally == 0)
    {
      /* Print the sorted items, up-and-down alphabetically, like ls. */
      for (i = 1; i <= count; i++)
	{
	  for (j = 0, l = i; j < limit; j++)
	    {
	      if (l > len || matches[l] == 0)
		break;
	      else
		{
		  temp = FUNC2 (matches[l]);
		  printed_len = FUNC1 (temp, matches[l]);

		  if (j + 1 < limit)
		    for (k = 0; k < max - printed_len; k++)
		      FUNC5 (' ');
		}
	      l += count;
	    }
	  FUNC5 ('\n');
	}
    }
  else
    {
      /* Print the sorted items, across alphabetically, like ls -x. */
      for (i = 1; matches[i]; i++)
	{
	  temp = FUNC2 (matches[i]);
	  printed_len = FUNC1 (temp, matches[i]);
	  /* Have we reached the end of this line? */
	  if (matches[i+1])
	    {
	      if (i && (limit > 1) && (i % limit) == 0)
		FUNC5 ('\n');
	      else
		for (k = 0; k < max - printed_len; k++)
		  FUNC5 (' ');
	    }
	}
      FUNC5 ('\n');
    }
}