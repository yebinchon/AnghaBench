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
struct ui_file {int dummy; } ;
struct type {int dummy; } ;
typedef  enum val_prettyprint { ____Placeholder_val_prettyprint } val_prettyprint ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 unsigned int FUNC0 (struct type*) ; 
 struct type* FUNC1 (struct type*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,struct type*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 struct type* FUNC7 (struct type*) ; 
 int /*<<< orphan*/  FUNC8 (struct ui_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 scalar_t__ prettyprint_arrays ; 
 unsigned int print_max ; 
 int /*<<< orphan*/  FUNC11 (int,struct ui_file*) ; 
 unsigned int repeat_count_threshold ; 
 int /*<<< orphan*/  FUNC12 (struct type*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ui_file*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

void
FUNC14 (struct type *type, char *valaddr, CORE_ADDR address,
			  struct ui_file *stream, int format, int deref_ref,
			  int recurse, enum val_prettyprint pretty,
			  unsigned int i)
{
  unsigned int things_printed = 0;
  unsigned len;
  struct type *elttype;
  unsigned eltlen;
  /* Position of the array element we are examining to see
     whether it is repeated.  */
  unsigned int rep1;
  /* Number of repetitions we have detected so far.  */
  unsigned int reps;

  elttype = FUNC1 (type);
  eltlen = FUNC0 (FUNC7 (elttype));
  len = FUNC0 (type) / eltlen;

  FUNC2 (i, elttype);

  for (; i < len && things_printed < print_max; i++)
    {
      if (i != 0)
	{
	  if (prettyprint_arrays)
	    {
	      FUNC8 (stream, ",\n");
	      FUNC11 (2 + 2 * recurse, stream);
	    }
	  else
	    {
	      FUNC8 (stream, ", ");
	    }
	}
      FUNC13 (FUNC10 (2 + 2 * recurse));

      rep1 = i + 1;
      reps = 1;
      while ((rep1 < len) &&
	     !FUNC9 (valaddr + i * eltlen, valaddr + rep1 * eltlen, eltlen))
	{
	  ++reps;
	  ++rep1;
	}

      if (reps > repeat_count_threshold)
	{
	  FUNC12 (elttype, valaddr + i * eltlen, 0, 0, stream, format,
		     deref_ref, recurse + 1, pretty);
	  FUNC5 (reps);
	  FUNC8 (stream, " <repeats %u times>", reps);
	  FUNC6 ();

	  i = rep1 - 1;
	  things_printed += repeat_count_threshold;
	}
      else
	{
	  FUNC12 (elttype, valaddr + i * eltlen, 0, 0, stream, format,
		     deref_ref, recurse + 1, pretty);
	  FUNC4 ();
	  things_printed++;
	}
    }
  FUNC3 ();
  if (i < len)
    {
      FUNC8 (stream, "...");
    }
}