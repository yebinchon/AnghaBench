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
typedef  int /*<<< orphan*/  svn_repos_notify_func_t ;
typedef  int /*<<< orphan*/ * svn_mergeinfo_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct verify_mergeinfo_normalization_baton {char const* path; void* notify_baton; int /*<<< orphan*/  notify_func; int /*<<< orphan*/  buffer; int /*<<< orphan*/ * normalized_paths; int /*<<< orphan*/ * paths; int /*<<< orphan*/ * result; int /*<<< orphan*/  normalize; } ;
struct filter_mergeinfo_paths_baton {char const* path; void* notify_baton; int /*<<< orphan*/  notify_func; int /*<<< orphan*/  buffer; int /*<<< orphan*/ * normalized_paths; int /*<<< orphan*/ * paths; int /*<<< orphan*/ * result; int /*<<< orphan*/  normalize; } ;
struct extract_mergeinfo_paths_baton {char const* path; void* notify_baton; int /*<<< orphan*/  notify_func; int /*<<< orphan*/  buffer; int /*<<< orphan*/ * normalized_paths; int /*<<< orphan*/ * paths; int /*<<< orphan*/ * result; int /*<<< orphan*/  normalize; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  extract_mergeinfo_paths ; 
 int /*<<< orphan*/  filter_mergeinfo_paths ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct verify_mergeinfo_normalization_baton*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  verify_mergeinfo_normalization ; 

__attribute__((used)) static svn_error_t *
FUNC5(const char *path,
                              const char *new_mergeinfo,
                              const char *old_mergeinfo,
                              svn_repos_notify_func_t notify_func,
                              void *notify_baton,
                              apr_pool_t *pool)
{
  svn_mergeinfo_t mergeinfo;
  apr_hash_t *normalized_paths;
  apr_hash_t *added_paths;
  struct extract_mergeinfo_paths_baton extract_baton;
  struct verify_mergeinfo_normalization_baton verify_baton;

  FUNC0(FUNC4(&mergeinfo, new_mergeinfo, pool));

  extract_baton.result = FUNC1(pool);
  extract_baton.normalize = FALSE;
  FUNC3(&extract_baton.buffer, 0, pool);
  FUNC0(FUNC2(NULL, mergeinfo,
                            extract_mergeinfo_paths,
                            &extract_baton, pool));
  added_paths = extract_baton.result;

  if (old_mergeinfo)
    {
      struct filter_mergeinfo_paths_baton filter_baton;
      svn_mergeinfo_t oldinfo;

      extract_baton.result = FUNC1(pool);
      extract_baton.normalize = TRUE;
      FUNC0(FUNC4(&oldinfo, old_mergeinfo, pool));
      FUNC0(FUNC2(NULL, oldinfo,
                                extract_mergeinfo_paths,
                                &extract_baton, pool));
      normalized_paths = extract_baton.result;

      filter_baton.paths = added_paths;
      FUNC0(FUNC2(NULL, oldinfo,
                                filter_mergeinfo_paths,
                                &filter_baton, pool));
    }
  else
      normalized_paths = FUNC1(pool);

  verify_baton.path = path;
  verify_baton.normalized_paths = normalized_paths;
  verify_baton.buffer = extract_baton.buffer;
  verify_baton.notify_func = notify_func;
  verify_baton.notify_baton = notify_baton;
  FUNC0(FUNC2(NULL, added_paths,
                            verify_mergeinfo_normalization,
                            &verify_baton, pool));

  return SVN_NO_ERROR;
}