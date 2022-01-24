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
typedef  int /*<<< orphan*/  svn_string_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct file_baton {int /*<<< orphan*/  dump_props; int /*<<< orphan*/  pool; int /*<<< orphan*/  deleted_props; int /*<<< orphan*/  props; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ svn_prop_regular_kind ; 
 scalar_t__ FUNC2 (char const*) ; 
 char* FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC4(void *file_baton,
                 const char *name,
                 const svn_string_t *value,
                 apr_pool_t *pool)
{
  struct file_baton *fb = file_baton;

  if (FUNC2(name) != svn_prop_regular_kind)
    return SVN_NO_ERROR;

  if (value)
    FUNC1(fb->props,
                  FUNC0(fb->pool, name),
                  FUNC3(value, fb->pool));
  else
    FUNC1(fb->deleted_props, FUNC0(fb->pool, name), "");

  /* Dump the property headers and wait; close_file might need
     to write text headers too depending on whether
     apply_textdelta is called */
  fb->dump_props = TRUE;

  return SVN_NO_ERROR;
}