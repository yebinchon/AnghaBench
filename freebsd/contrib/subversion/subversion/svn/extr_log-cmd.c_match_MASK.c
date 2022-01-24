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
typedef  int /*<<< orphan*/  svn_membuf_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int svn_boolean_t ;

/* Variables and functions */
 scalar_t__ APR_SUCCESS ; 
 int FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (char const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const**,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_boolean_t
FUNC4(const char *pattern, const char *str, svn_membuf_t *buf)
{
  svn_error_t *err;

  err = FUNC3(&str, str, FUNC1(str), TRUE, TRUE, buf);
  if (err)
    {
      /* Can't match invalid data. */
      FUNC2(err);
      return FALSE;
    }

  return FUNC0(pattern, str, 0) == APR_SUCCESS;
}