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
 char* FUNC0 (scalar_t__) ; 
 char* FUNC1 (int,char*) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 scalar_t__ FUNC4 (char const*) ; 

int
FUNC5 (int category)
{
#if ! HAVE_SETLOCALE
  return 0;
#else

  int hard = 1;
  char const *p = setlocale (category, 0);

  if (p)
    {
# if defined(__FreeBSD__) || (defined __GLIBC__ && __GLIBC__ >= 2)
      if (strcmp (p, "C") == 0 || strcmp (p, "POSIX") == 0)
	hard = 0;
# else
      char *locale = alloca (strlen (p) + 1);
      strcpy (locale, p);

      /* Temporarily set the locale to the "C" and "POSIX" locales to
	 find their names, so that we can determine whether one or the
	 other is the caller's locale.  */
      if (((p = setlocale (category, "C")) && strcmp (p, locale) == 0)
	  || ((p = setlocale (category, "POSIX")) && strcmp (p, locale) == 0))
	hard = 0;

      /* Restore the caller's locale.  */
      setlocale (category, locale);
# endif
    }

  return hard;

#endif
}