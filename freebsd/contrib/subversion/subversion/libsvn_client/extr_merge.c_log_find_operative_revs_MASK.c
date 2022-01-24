#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  scalar_t__ svn_mergeinfo_t ;
struct TYPE_4__ {int /*<<< orphan*/  changed_paths2; int /*<<< orphan*/  revision; } ;
typedef  TYPE_1__ svn_log_entry_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct TYPE_5__ {char* source_repos_rel_path; int /*<<< orphan*/ * result_pool; int /*<<< orphan*/  unmerged_catalog; int /*<<< orphan*/  merged_catalog; int /*<<< orphan*/  target_fspath; } ;
typedef  TYPE_2__ log_find_operative_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC6 (int /*<<< orphan*/ *,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const**,char const*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (char const*) ; 
 char* FUNC9 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC14 (char*,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC15 (char const*,char const*) ; 

__attribute__((used)) static svn_error_t *
FUNC16(void *baton,
                        svn_log_entry_t *log_entry,
                        apr_pool_t *pool)
{
  log_find_operative_baton_t *log_baton = baton;
  apr_hash_index_t *hi;
  svn_revnum_t revision;

  /* It's possible that authz restrictions on the merge source prevent us
     from knowing about any of the changes for LOG_ENTRY->REVISION. */
  if (!log_entry->changed_paths2)
    return SVN_NO_ERROR;

  revision = log_entry->revision;

  for (hi = FUNC1(pool, log_entry->changed_paths2);
       hi;
       hi = FUNC2(hi))
    {
      const char *subtree_missing_this_rev;
      const char *path = FUNC3(hi);
      const char *rel_path;
      const char *source_rel_path;
      svn_boolean_t in_catalog;
      svn_mergeinfo_t log_entry_as_mergeinfo;

      rel_path = FUNC9(log_baton->target_fspath, path);
      /* Easy out: The path is not within the tree of interest. */
      if (rel_path == NULL)
        continue;

      source_rel_path = FUNC14(log_baton->source_repos_rel_path,
                                         rel_path, pool);

      FUNC0(FUNC13(&log_entry_as_mergeinfo,
                                  FUNC4(pool, "%s:%ld",
                                               path, revision),
                                  pool));

      FUNC0(FUNC7(&in_catalog, &subtree_missing_this_rev,
                                   source_rel_path, log_entry_as_mergeinfo,
                                   log_baton->merged_catalog,
                                   pool, pool));

      if (!in_catalog)
        {
          svn_mergeinfo_t unmerged_for_key;
          const char *suffix, *missing_path;

          /* If there is no mergeinfo on the source tree we'll say
             the "subtree" missing this revision is the root of the
             source. */
          if (!subtree_missing_this_rev)
            subtree_missing_this_rev = log_baton->source_repos_rel_path;

          suffix = FUNC15(subtree_missing_this_rev,
                                             source_rel_path);
          if (suffix && suffix[0] != '\0')
            {
              missing_path = FUNC6(pool, path,
                                            FUNC8(path) - FUNC8(suffix) - 1);
            }
          else
            {
              missing_path = path;
            }

          FUNC0(FUNC13(&log_entry_as_mergeinfo,
                                      FUNC4(pool, "%s:%ld",
                                                   missing_path, revision),
                                      log_baton->result_pool));
          unmerged_for_key = FUNC10(log_baton->unmerged_catalog,
                                           subtree_missing_this_rev);

          if (unmerged_for_key)
            {
              FUNC0(FUNC12(unmerged_for_key,
                                           log_entry_as_mergeinfo,
                                           log_baton->result_pool,
                                           pool));
            }
          else
            {
              FUNC11(log_baton->unmerged_catalog,
                            FUNC5(log_baton->result_pool,
                                        subtree_missing_this_rev),
                            log_entry_as_mergeinfo);
            }

        }
    }
  return SVN_NO_ERROR;
}