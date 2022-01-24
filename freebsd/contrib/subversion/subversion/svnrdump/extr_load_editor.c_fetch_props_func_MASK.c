#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ svn_revnum_t ;
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct revision_baton {TYPE_1__* pb; scalar_t__ rev; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;
struct TYPE_2__ {int /*<<< orphan*/  aux_session; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_dir ; 
 scalar_t__ svn_node_file ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,scalar_t__,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,char const*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char const*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC9(apr_hash_t **props,
                 void *baton,
                 const char *path,
                 svn_revnum_t base_revision,
                 apr_pool_t *result_pool,
                 apr_pool_t *scratch_pool)
{
  struct revision_baton *rb = baton;
  svn_node_kind_t node_kind;

  if (! FUNC1(base_revision))
    base_revision = rb->rev - 1;

  FUNC0(FUNC6(rb->pb->aux_session, path, base_revision,
                            &node_kind, scratch_pool));

  if (node_kind == svn_node_file)
    {
      FUNC0(FUNC8(rb->pb->aux_session, path, base_revision,
                              NULL, NULL, props, result_pool));
    }
  else if (node_kind == svn_node_dir)
    {
      apr_array_header_t *tmp_props;

      FUNC0(FUNC7(rb->pb->aux_session, NULL, NULL, props, path,
                              base_revision, 0 /* Dirent fields */,
                              result_pool));
      tmp_props = FUNC5(*props, result_pool);
      FUNC0(FUNC3(tmp_props, NULL, NULL, &tmp_props,
                                   result_pool));
      *props = FUNC4(tmp_props, result_pool);
    }
  else
    {
      *props = FUNC2(result_pool);
    }

  return SVN_NO_ERROR;
}