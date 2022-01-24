#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {char const* data; int /*<<< orphan*/  len; } ;
typedef  TYPE_1__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_repos_notify_t ;
typedef  int /*<<< orphan*/  (* svn_repos_notify_func_t ) (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_int32_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**,TYPE_1__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_repos_notify_load_normalized_mergeinfo ; 
 int /*<<< orphan*/  FUNC6 (char const*,char const**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC7(svn_string_t **new_value_p,
                                     const svn_string_t *old_value,
                                     const char *parent_dir,
                                     apr_hash_t *rev_map,
                                     svn_revnum_t oldest_dumpstream_rev,
                                     apr_int32_t older_revs_offset,
                                     svn_repos_notify_func_t notify_func,
                                     void *notify_baton,
                                     apr_pool_t *result_pool,
                                     apr_pool_t *scratch_pool)
{
  svn_string_t prop_val = *old_value;

  /* Tolerate mergeinfo with "\r\n" line endings because some
     dumpstream sources might contain as much.  If so normalize
     the line endings to '\n' and notify that we have made this
     correction. */
  if (FUNC4(prop_val.data, "\r"))
    {
      const char *prop_eol_normalized;

      FUNC0(FUNC6(prop_val.data,
                                           &prop_eol_normalized,
                                           "\n",  /* translate to LF */
                                           FALSE, /* no repair */
                                           NULL,  /* no keywords */
                                           FALSE, /* no expansion */
                                           result_pool));
      prop_val.data = prop_eol_normalized;
      prop_val.len = FUNC3(prop_eol_normalized);

      if (notify_func)
        {
          svn_repos_notify_t *notify
                  = FUNC5(
                                svn_repos_notify_load_normalized_mergeinfo,
                                scratch_pool);

          notify_func(notify_baton, notify, scratch_pool);
        }
    }

  /* Renumber mergeinfo as appropriate. */
  FUNC0(FUNC2(new_value_p, &prop_val,
                                  rev_map, oldest_dumpstream_rev,
                                  older_revs_offset,
                                  result_pool));

  if (parent_dir)
    {
      /* Prefix the merge source paths with PARENT_DIR. */
      /* ASSUMPTION: All source paths are included in the dump stream. */
      FUNC0(FUNC1(new_value_p, *new_value_p,
                                     parent_dir, result_pool));
    }

  return SVN_NO_ERROR;
}