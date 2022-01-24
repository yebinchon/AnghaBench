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
typedef  scalar_t__ Char ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,scalar_t__) ; 
 scalar_t__* FUNC1 (scalar_t__*,scalar_t__*,int,scalar_t__*) ; 

__attribute__((used)) static Char *
FUNC2(Char *p, Char *low, int n, Char *delim)
{
  while (n--) {
    Char *prev = low;
    Char *new;

    while (prev < p) {		/* Skip initial non-word chars */
      if (!FUNC0(delim, *prev) || *(prev-1) == (Char)'\\')
	break;
      prev++;
    }

    new = prev;

    while (new < p) {
      prev = new;
      new = FUNC1(prev-1, p, 1, delim); /* Skip to next non-word char */
      new++;			/* Step away from end of word */
      while (new <= p) {	/* Skip trailing non-word chars */
	if (!FUNC0(delim, *new) || *(new-1) == (Char)'\\')
	  break;
	new++;
      }
    }

    p = prev;			/* Set to previous word start */

  }
  if (p < low)
    p = low;
  return (p);
}