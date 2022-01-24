#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ svn_mergeinfo_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_11__ {struct TYPE_11__ const* remaining_ranges; } ;
typedef  TYPE_1__ svn_client__merge_path_t ;
struct TYPE_12__ {int /*<<< orphan*/  ctx; int /*<<< orphan*/  ra_session2; int /*<<< orphan*/  paths_with_new_mergeinfo; scalar_t__ dry_run; } ;
typedef  TYPE_2__ merge_cmd_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC10 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char const*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_mergeinfo_explicit ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_mergeinfo_nearest_ancestor ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 TYPE_1__ const* FUNC16 (TYPE_1__ const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC17(merge_cmd_baton_t *merge_b,
                                    apr_array_header_t *children_with_mergeinfo,
                                    apr_pool_t *pool)
{
  apr_pool_t *iterpool;
  apr_hash_index_t *hi;

  if (!merge_b->paths_with_new_mergeinfo || merge_b->dry_run)
    return SVN_NO_ERROR;

  /* Iterate over each path with explicit mergeinfo added by the merge. */
  iterpool = FUNC14(pool);
  for (hi = FUNC2(pool, merge_b->paths_with_new_mergeinfo);
       hi;
       hi = FUNC3(hi))
    {
      const char *abspath_with_new_mergeinfo = FUNC4(hi);
      svn_mergeinfo_t path_inherited_mergeinfo;
      svn_mergeinfo_t path_explicit_mergeinfo;
      svn_client__merge_path_t *new_child;

      FUNC13(iterpool);

      /* Note: We could skip recording inherited mergeinfo here if this path
         was added (with preexisting mergeinfo) by the merge.  That's actually
         more correct, since the inherited mergeinfo likely describes
         non-existent or unrelated merge history, but it's not quite so simple
         as that, see http://subversion.tigris.org/issues/show_bug.cgi?id=4309
         */

      /* Get the path's new explicit mergeinfo... */
      FUNC0(FUNC8(&path_explicit_mergeinfo, NULL,
                                           svn_mergeinfo_explicit,
                                           abspath_with_new_mergeinfo,
                                           NULL, NULL, FALSE,
                                           merge_b->ctx,
                                           iterpool, iterpool));
      /* ...there *should* always be explicit mergeinfo at this point
         but you can't be too careful. */
      if (path_explicit_mergeinfo)
        {
          /* Get the mergeinfo the path would have inherited before
             the merge. */
          FUNC0(FUNC9(
            &path_inherited_mergeinfo,
            NULL, NULL,
            FALSE,
            svn_mergeinfo_nearest_ancestor, /* We only want inherited MI */
            merge_b->ra_session2,
            abspath_with_new_mergeinfo,
            merge_b->ctx,
            iterpool));

          /* If the path inherited any mergeinfo then merge that with the
             explicit mergeinfo and record the result as the path's new
             explicit mergeinfo. */
          if (path_inherited_mergeinfo)
            {
              FUNC0(FUNC12(path_explicit_mergeinfo,
                                           path_inherited_mergeinfo,
                                           iterpool, iterpool));
              FUNC0(FUNC11(
                                          abspath_with_new_mergeinfo,
                                          path_explicit_mergeinfo,
                                          FALSE, merge_b->ctx, iterpool));
            }

          /* If the path is not in CHILDREN_WITH_MERGEINFO then add it. */
          new_child =
            FUNC6(children_with_mergeinfo,
                                     abspath_with_new_mergeinfo);
          if (!new_child)
            {
              const svn_client__merge_path_t *parent
                = FUNC5(children_with_mergeinfo,
                                        FALSE, abspath_with_new_mergeinfo);
              new_child
                = FUNC10(abspath_with_new_mergeinfo,
                                                pool);

              /* If path_with_new_mergeinfo is the merge target itself
                 then it should already be in
                 CHILDREN_WITH_MERGEINFO per the criteria of
                 get_mergeinfo_paths() and we shouldn't be in this block.
                 If path_with_new_mergeinfo is a subtree then it must have
                 a parent in CHILDREN_WITH_MERGEINFO if only
                 the merge target itself...so if we don't find a parent
                 the caller has done something quite wrong. */
              FUNC1(parent);
              FUNC1(parent->remaining_ranges);

              /* Set the path's remaining_ranges equal to its parent's. */
              new_child->remaining_ranges = FUNC16(
                 parent->remaining_ranges, pool);
              FUNC7(children_with_mergeinfo, new_child, pool);
            }
        }
    }
  FUNC15(iterpool);

  return SVN_NO_ERROR;
}