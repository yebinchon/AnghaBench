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

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

svn_boolean_t
FUNC5(const char *name)
{
  FUNC1(FUNC2(name, FUNC4(name)));

  /* Can't be empty or `..'  */
  if (FUNC0(name)
      || (name[0] == '.' && name[1] == '.' && name[2] == '\0'))
    return FALSE;

  /* Slashes are bad, m'kay... */
  if (FUNC3(name, '/') != NULL)
    return FALSE;

  /* It is valid.  */
  return TRUE;
}