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
 int after_last_match ; 
 char const* buflim ; 
 int bufoffset ; 
 scalar_t__ done_on_match ; 
 size_t FUNC0 (char const*,int,size_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ exit_on_match ; 
 scalar_t__ out_invert ; 
 scalar_t__ outleft ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*,int*) ; 
 size_t FUNC3 (char const*,int,size_t*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4 (char const *beg, char const *lim)
{
  int nlines, n;
  register char const *p;
  size_t match_offset;
  size_t match_size;

  nlines = 0;
  p = beg;
  while ((match_offset = FUNC0) (p, lim - p, &match_size, 0)) != (size_t) -1)
    {
      char const *b = p + match_offset;
      char const *endp = b + match_size;
      /* Avoid matching the empty line at the end of the buffer. */
      if (b == lim)
	break;
      if (!out_invert)
	{
	  FUNC2 (b, endp, (int *) 0);
	  nlines++;
          outleft--;
	  if (!outleft || done_on_match)
	    {
	      if (exit_on_match)
		FUNC1 (0);
	      after_last_match = bufoffset - (buflim - endp);
	      return nlines;
	    }
	}
      else if (p < b)
	{
	  FUNC2 (p, b, &n);
	  nlines += n;
          outleft -= n;
	  if (!outleft)
	    return nlines;
	}
      p = endp;
    }
  if (out_invert && p < lim)
    {
      FUNC2 (p, lim, &n);
      nlines += n;
      outleft -= n;
    }
  return nlines;
}