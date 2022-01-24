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
 scalar_t__ FUNC0 (scalar_t__*,scalar_t__) ; 

__attribute__((used)) static Char *
FUNC1(Char *p, Char *high, int n, Char *delim)
{
    Char inquote = 0;
    p++;

    while (n--) {
        while (p < high) {	/* Skip non-word chars */
	  if (!FUNC0(delim, *p) || *(p-1) == (Char)'\\')
	    break;
	  p++;
        }
	while (p < high) {	/* Skip string */
	  if ((*p == (Char)'\'' || *p == (Char)'"')) { /* Quotation marks? */
	    if (inquote || *(p-1) != (Char)'\\') { /* Should it be honored? */
	      if (inquote == 0) inquote = *p;
	      else if (inquote == *p) inquote = 0;
	    }
	  }
	  /* Break if unquoted non-word char */
	  if (!inquote && FUNC0(delim, *p) && *(p-1) != (Char)'\\')
	    break;
	  p++;
	}
    }

    p--;
    return(p);
}