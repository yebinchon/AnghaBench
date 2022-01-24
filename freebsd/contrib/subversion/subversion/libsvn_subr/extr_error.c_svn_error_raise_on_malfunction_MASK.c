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
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_ERR_ASSERTION_FAIL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char const*,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int,...) ; 

svn_error_t *
FUNC4(svn_boolean_t can_return,
                               const char *file, int line,
                               const char *expr)
{
  if (!can_return)
    FUNC1(); /* Nothing else we can do as a library */

  /* The filename and line number of the error source needs to be set
     here because svn_error_createf() is not the macro defined in
     svn_error.h but the real function. */
  FUNC2(file, line);

  if (expr)
    return FUNC3(SVN_ERR_ASSERTION_FAIL, NULL,
                             FUNC0("In file '%s' line %d: assertion failed (%s)"),
                             file, line, expr);
  else
    return FUNC3(SVN_ERR_ASSERTION_FAIL, NULL,
                             FUNC0("In file '%s' line %d: internal malfunction"),
                             file, line);
}