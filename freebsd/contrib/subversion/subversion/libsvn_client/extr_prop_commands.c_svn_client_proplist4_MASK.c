#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_proplist_receiver2_t ;
struct TYPE_12__ {scalar_t__ kind; } ;
typedef  TYPE_1__ svn_opt_revision_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_depth_t ;
typedef  int /*<<< orphan*/  svn_client_ctx_t ;
typedef  int svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (char const*,TYPE_1__ const*,scalar_t__,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*,TYPE_1__ const*,TYPE_1__ const*,scalar_t__,int,int,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (TYPE_1__ const*,char const*) ; 
 TYPE_1__* FUNC5 (TYPE_1__ const*,TYPE_1__ const*) ; 
 scalar_t__ svn_depth_empty ; 
 scalar_t__ svn_depth_unknown ; 
 scalar_t__ svn_opt_revision_unspecified ; 
 scalar_t__ svn_opt_revision_working ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 

svn_error_t *
FUNC7(const char *path_or_url,
                     const svn_opt_revision_t *peg_revision,
                     const svn_opt_revision_t *revision,
                     svn_depth_t depth,
                     const apr_array_header_t *changelists,
                     svn_boolean_t get_target_inherited_props,
                     svn_proplist_receiver2_t receiver,
                     void *receiver_baton,
                     svn_client_ctx_t *ctx,
                     apr_pool_t *scratch_pool)
{
  svn_boolean_t local_explicit_props;
  svn_boolean_t local_iprops;

  peg_revision = FUNC4(peg_revision,
                                                        path_or_url);
  revision = FUNC5(revision, peg_revision);

  if (depth == svn_depth_unknown)
    depth = svn_depth_empty;

  /* Are explicit props available locally? */
  local_explicit_props =
    (! FUNC6(path_or_url)
     && FUNC0(peg_revision->kind)
     && FUNC0(revision->kind));

  /* If we want iprops are they available locally? */
  local_iprops =
    (get_target_inherited_props /* We want iprops */
     && local_explicit_props /* No local explicit props means no local iprops. */
     && (peg_revision->kind == svn_opt_revision_working
         || peg_revision->kind == svn_opt_revision_unspecified )
     && (revision->kind == svn_opt_revision_working
         || revision->kind == svn_opt_revision_unspecified ));

  if ((get_target_inherited_props && !local_iprops)
      || !local_explicit_props)
    {
      FUNC1(FUNC3(path_or_url, peg_revision, revision, depth,
                               !local_explicit_props,
                               (get_target_inherited_props && !local_iprops),
                               receiver, receiver_baton, ctx, scratch_pool));
    }

  if (local_explicit_props)
    {
      FUNC1(FUNC2(path_or_url, revision, depth, changelists,
                              local_iprops, receiver, receiver_baton, ctx,
                              scratch_pool));
    }

  return SVN_NO_ERROR;
}