#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_fs_path_change2_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_9__ {int /*<<< orphan*/  changed_paths; int /*<<< orphan*/  deletions; } ;
typedef  TYPE_3__ process_changes_baton_t ;
struct TYPE_8__ {int len; char* data; } ;
struct TYPE_7__ {scalar_t__ change_kind; } ;
struct TYPE_10__ {TYPE_2__ path; TYPE_1__ info; } ;
typedef  TYPE_4__ change_t ;
typedef  int apr_ssize_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void const**,int*,void**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*) ; 
 scalar_t__ svn_fs_path_change_delete ; 
 scalar_t__ svn_fs_path_change_replace ; 
 char* FUNC6 (char*,void const*) ; 

__attribute__((used)) static svn_error_t *
FUNC7(void *baton_p,
                change_t *change,
                apr_pool_t *scratch_pool)
{
  process_changes_baton_t *baton = baton_p;

  FUNC0(FUNC5(baton->changed_paths, baton->deletions, change));

  /* Now, if our change was a deletion or replacement, we have to
     blow away any changes thus far on paths that are (or, were)
     children of this path.
     ### i won't bother with another iteration pool here -- at
     most we talking about a few extra dups of paths into what
     is already a temporary subpool.
  */

  if ((change->info.change_kind == svn_fs_path_change_delete)
       || (change->info.change_kind == svn_fs_path_change_replace))
    {
      apr_hash_index_t *hi;

      /* a potential child path must contain at least 2 more chars
         (the path separator plus at least one char for the name).
         Also, we should not assume that all paths have been normalized
         i.e. some might have trailing path separators.
      */
      apr_ssize_t path_len = change->path.len;
      apr_ssize_t min_child_len = path_len == 0
                                ? 1
                                : change->path.data[path_len-1] == '/'
                                    ? path_len + 1
                                    : path_len + 2;

      /* CAUTION: This is the inner loop of an O(n^2) algorithm.
         The number of changes to process may be >> 1000.
         Therefore, keep the inner loop as tight as possible.
      */
      for (hi = FUNC1(scratch_pool, baton->changed_paths);
           hi;
           hi = FUNC2(hi))
        {
          /* KEY is the path. */
          const void *path;
          apr_ssize_t klen;
          svn_fs_path_change2_t *old_change;
          FUNC4(hi, &path, &klen, (void**)&old_change);

          /* If we come across a child of our path, remove it.
             Call svn_fspath__skip_ancestor only if there is a chance that
             this is actually a sub-path.
           */
          if (klen >= min_child_len)
            {
              const char *child;

              child = FUNC6(change->path.data, path);
              if (child && child[0] != '\0')
                {
                  FUNC3(baton->changed_paths, path, klen, NULL);
                }
            }
        }
    }

  return SVN_NO_ERROR;
}