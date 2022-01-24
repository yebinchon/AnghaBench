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
typedef  int svn_boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  STDOUT_FILENO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

svn_boolean_t
FUNC2(void)
{
#ifdef WIN32
  return (_isatty(STDOUT_FILENO) != 0);
#else
  return (FUNC1(STDOUT_FILENO) != 0);
#endif
}