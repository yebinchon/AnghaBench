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
typedef  int /*<<< orphan*/  svn_membuf_t ;
struct TYPE_3__ {char const* copyfrom_path; int /*<<< orphan*/  copyfrom_rev; } ;
typedef  TYPE_1__ svn_log_changed_path2_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *,char*,char const*) ; 
 scalar_t__ FUNC6 (char const*,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_boolean_t
FUNC7(const char *search_pattern,
                     const char *author,
                     const char *date,
                     const char *log_message,
                     apr_hash_t *changed_paths,
                     svn_membuf_t *buf,
                     apr_pool_t *pool)
{
  /* Match any substring containing the pattern, like UNIX 'grep' does. */
  const char *pattern = FUNC5(pool, "*%s*", search_pattern);

  /* Does the author match the search pattern? */
  if (author && FUNC6(pattern, author, buf))
    return TRUE;

  /* Does the date the search pattern? */
  if (date && FUNC6(pattern, date, buf))
    return TRUE;

  /* Does the log message the search pattern? */
  if (log_message && FUNC6(pattern, log_message, buf))
    return TRUE;

  if (changed_paths)
    {
      apr_hash_index_t *hi;

      /* Does a changed path match the search pattern? */
      for (hi = FUNC1(pool, changed_paths);
           hi;
           hi = FUNC2(hi))
        {
          const char *path = FUNC3(hi);
          svn_log_changed_path2_t *log_item;

          if (FUNC6(pattern, path, buf))
            return TRUE;

          /* Match copy-from paths, too. */
          log_item = FUNC4(hi);
          if (log_item->copyfrom_path
              && FUNC0(log_item->copyfrom_rev)
              && FUNC6(pattern, log_item->copyfrom_path, buf))
            return TRUE;
        }
    }

  return FALSE;
}