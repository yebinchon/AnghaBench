#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ prejfile; scalar_t__ conflict_wrk; scalar_t__ conflict_new; scalar_t__ conflict_old; } ;
typedef  TYPE_1__ svn_wc_entry_t ;
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 char* FUNC1 (char const*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char const*,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_file ; 

svn_error_t *
FUNC3(svn_boolean_t *text_conflicted_p,
                    svn_boolean_t *prop_conflicted_p,
                    const char *dir_path,
                    const svn_wc_entry_t *entry,
                    apr_pool_t *pool)
{
  svn_node_kind_t kind;
  const char *path;

  *text_conflicted_p = FALSE;
  *prop_conflicted_p = FALSE;

  if (entry->conflict_old)
    {
      path = FUNC1(dir_path, entry->conflict_old, pool);
      FUNC0(FUNC2(path, &kind, pool));
      *text_conflicted_p = (kind == svn_node_file);
    }

  if ((! *text_conflicted_p) && (entry->conflict_new))
    {
      path = FUNC1(dir_path, entry->conflict_new, pool);
      FUNC0(FUNC2(path, &kind, pool));
      *text_conflicted_p = (kind == svn_node_file);
    }

  if ((! *text_conflicted_p) && (entry->conflict_wrk))
    {
      path = FUNC1(dir_path, entry->conflict_wrk, pool);
      FUNC0(FUNC2(path, &kind, pool));
      *text_conflicted_p = (kind == svn_node_file);
    }

  if (entry->prejfile)
    {
      path = FUNC1(dir_path, entry->prejfile, pool);
      FUNC0(FUNC2(path, &kind, pool));
      *prop_conflicted_p = (kind == svn_node_file);
    }

  return SVN_NO_ERROR;
}