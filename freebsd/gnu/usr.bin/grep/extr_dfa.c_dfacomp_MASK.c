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
struct dfa {scalar_t__ nregexps; scalar_t__ nleaves; scalar_t__ depth; scalar_t__ tindex; scalar_t__ cindex; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int case_fold ; 
 int /*<<< orphan*/  FUNC2 (struct dfa*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dfa*) ; 
 int /*<<< orphan*/  FUNC5 (struct dfa*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,size_t,struct dfa*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (size_t) ; 
 char FUNC9 (unsigned char) ; 

void
FUNC10 (char const *s, size_t len, struct dfa *d, int searchflag)
{
  if (case_fold)	/* dummy folding in service of dfamust() */
    {
      char *lcopy;
      int i;

      lcopy = FUNC8(len);
      if (!lcopy)
	FUNC3(FUNC1("out of memory"));

      /* This is a kludge. */
      case_fold = 0;
      for (i = 0; i < len; ++i)
	if (FUNC0 ((unsigned char) s[i]))
	  lcopy[i] = FUNC9 ((unsigned char) s[i]);
	else
	  lcopy[i] = s[i];

      FUNC4(d);
      FUNC6(lcopy, len, d);
      FUNC7(lcopy);
      FUNC5(d);
      d->cindex = d->tindex = d->depth = d->nleaves = d->nregexps = 0;
      case_fold = 1;
      FUNC6(s, len, d);
      FUNC2(d, searchflag);
    }
  else
    {
        FUNC4(d);
        FUNC6(s, len, d);
	FUNC5(d);
        FUNC2(d, searchflag);
    }
}