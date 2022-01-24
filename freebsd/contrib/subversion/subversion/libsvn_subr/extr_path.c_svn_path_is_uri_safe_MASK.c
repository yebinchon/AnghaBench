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
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  size_t apr_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC0 (char const*) ; 
 char* FUNC1 (char const*,char) ; 
 scalar_t__ FUNC2 (char const) ; 
 int /*<<< orphan*/ * svn_uri__char_validity ; 

svn_boolean_t
FUNC3(const char *path)
{
  apr_size_t i;

  /* Skip the URI scheme. */
  path = FUNC0(path);

  /* No scheme?  Get outta here. */
  if (! path)
    return FALSE;

  /* Skip to the first slash that's after the URI scheme. */
  path = FUNC1(path, '/');

  /* If there's no first slash, then there's only a host portion;
     therefore there couldn't be any uri-unsafe characters after the
     host... so return true. */
  if (path == NULL)
    return TRUE;

  for (i = 0; path[i]; i++)
    {
      /* Allow '%XX' (where each X is a hex digit) */
      if (path[i] == '%')
        {
          if (FUNC2(path[i + 1]) &&
              FUNC2(path[i + 2]))
            {
              i += 2;
              continue;
            }
          return FALSE;
        }
      else if (! svn_uri__char_validity[((unsigned char)path[i])])
        {
          return FALSE;
        }
    }

  return TRUE;
}