#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  rev; int /*<<< orphan*/  relpath; } ;
typedef  TYPE_1__ svn_pathrev_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_10__ {scalar_t__ kind; int /*<<< orphan*/  text; int /*<<< orphan*/  props; } ;
typedef  TYPE_2__ svn_element__payload_t ;
struct TYPE_11__ {int /*<<< orphan*/  fetch_baton; int /*<<< orphan*/  (* fetch_func ) (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_3__ svn_branch__txn_priv_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_2__*) ; 
 scalar_t__ svn_node_dir ; 
 scalar_t__ svn_node_file ; 

__attribute__((used)) static svn_error_t *
FUNC5(svn_element__payload_t **payload_p,
              apr_hash_t **children_names,
              svn_branch__txn_priv_t *eb,
              const svn_pathrev_t *path_rev,
              apr_pool_t *result_pool,
              apr_pool_t *scratch_pool)
{
  svn_element__payload_t *payload
    = FUNC2(result_pool, sizeof (*payload));

  FUNC0(eb->fetch_func(&payload->kind,
                         &payload->props,
                         &payload->text,
                         children_names,
                         eb->fetch_baton,
                         path_rev->relpath, path_rev->rev,
                         result_pool, scratch_pool));

  FUNC1(FUNC4(payload));
  FUNC1(payload->kind == svn_node_dir
                 || payload->kind == svn_node_file);
  if (payload_p)
    *payload_p = payload;
  return SVN_NO_ERROR;
}