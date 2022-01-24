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
struct floatformat {int dummy; } ;
typedef  double DOUBLEST ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct type*) ; 
 scalar_t__ TYPE_CODE_FLT ; 
 unsigned int FUNC1 (struct type*) ; 
 struct floatformat* FUNC2 (struct type*) ; 
 scalar_t__ FUNC3 (struct floatformat const*,char*) ; 
 scalar_t__ FUNC4 (struct floatformat const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct floatformat const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct ui_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 double FUNC10 (struct type*,char*,int*) ; 

void
FUNC11 (char *valaddr, struct type *type, struct ui_file *stream)
{
  DOUBLEST doub;
  int inv;
  const struct floatformat *fmt = NULL;
  unsigned len = FUNC1 (type);

  /* If it is a floating-point, check for obvious problems.  */
  if (FUNC0 (type) == TYPE_CODE_FLT)
    fmt = FUNC2 (type);
  if (fmt != NULL && FUNC3 (fmt, valaddr))
    {
      if (FUNC4 (fmt, valaddr))
	FUNC6 (stream, "-");
      FUNC6 (stream, "nan(");
      FUNC7 (FUNC8 (), stream);
      FUNC7 (FUNC5 (fmt, valaddr), stream);
      FUNC7 (FUNC9 (), stream);
      FUNC6 (stream, ")");
      return;
    }

  /* NOTE: cagney/2002-01-15: The TYPE passed into print_floating()
     isn't necessarily a TYPE_CODE_FLT.  Consequently, unpack_double
     needs to be used as that takes care of any necessary type
     conversions.  Such conversions are of course direct to DOUBLEST
     and disregard any possible target floating point limitations.
     For instance, a u64 would be converted and displayed exactly on a
     host with 80 bit DOUBLEST but with loss of information on a host
     with 64 bit DOUBLEST.  */

  doub = FUNC10 (type, valaddr, &inv);
  if (inv)
    {
      FUNC6 (stream, "<invalid float value>");
      return;
    }

  /* FIXME: kettenis/2001-01-20: The following code makes too much
     assumptions about the host and target floating point format.  */

  /* NOTE: cagney/2002-02-03: Since the TYPE of what was passed in may
     not necessarially be a TYPE_CODE_FLT, the below ignores that and
     instead uses the type's length to determine the precision of the
     floating-point value being printed.  */

  if (len < sizeof (double))
      FUNC6 (stream, "%.9g", (double) doub);
  else if (len == sizeof (double))
      FUNC6 (stream, "%.17g", (double) doub);
  else
#ifdef PRINTF_HAS_LONG_DOUBLE
    fprintf_filtered (stream, "%.35Lg", doub);
#else
    /* This at least wins with values that are representable as
       doubles.  */
    FUNC6 (stream, "%.17g", (double) doub);
#endif
}