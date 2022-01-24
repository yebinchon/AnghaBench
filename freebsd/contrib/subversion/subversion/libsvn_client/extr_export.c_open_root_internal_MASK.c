#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ kind; } ;
typedef  TYPE_1__ svn_wc_notify_t ;
typedef  int /*<<< orphan*/  (* svn_wc_notify_func2_t ) (void*,TYPE_1__*,int /*<<< orphan*/ *) ;
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_WC_NOT_WORKING_COPY ; 
 int /*<<< orphan*/  SVN_ERR_WC_OBSTRUCTED_UPDATE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (void*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_dir ; 
 scalar_t__ svn_node_file ; 
 scalar_t__ svn_node_none ; 
 TYPE_1__* FUNC7 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_wc_notify_update_add ; 

__attribute__((used)) static svn_error_t *
FUNC8(const char *path,
                   svn_boolean_t force,
                   svn_wc_notify_func2_t notify_func,
                   void *notify_baton,
                   apr_pool_t *pool)
{
  svn_node_kind_t kind;

  FUNC0(FUNC5(path, &kind, pool));
  if (kind == svn_node_none)
    FUNC0(FUNC6(path, pool));
  else if (kind == svn_node_file)
    return FUNC4(SVN_ERR_WC_NOT_WORKING_COPY, NULL,
                             FUNC1("'%s' exists and is not a directory"),
                             FUNC3(path, pool));
  else if ((kind != svn_node_dir) || (! force))
    return FUNC4(SVN_ERR_WC_OBSTRUCTED_UPDATE, NULL,
                             FUNC1("'%s' already exists"),
                             FUNC3(path, pool));

  if (notify_func)
    {
      svn_wc_notify_t *notify = FUNC7(path,
                                                     svn_wc_notify_update_add,
                                                     pool);
      notify->kind = svn_node_dir;
      (*notify_func)(notify_baton, notify, pool);
    }

  return SVN_NO_ERROR;
}