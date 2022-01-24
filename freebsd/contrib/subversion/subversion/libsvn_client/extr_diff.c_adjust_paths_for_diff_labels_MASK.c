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
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  scalar_t__ apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char const*,char const*) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 char* FUNC1 (int /*<<< orphan*/ *,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC5 (char const*,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC6 (char const*,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC9(const char **index_path,
                             const char **orig_path_1,
                             const char **orig_path_2,
                             const char *relative_to_dir,
                             const char *anchor,
                             apr_pool_t *result_pool,
                             apr_pool_t *scratch_pool)
{
  const char *new_path = *index_path;
  const char *new_path1 = *orig_path_1;
  const char *new_path2 = *orig_path_2;

  if (anchor)
    new_path = FUNC6(anchor, new_path, result_pool);

  if (relative_to_dir)
    {
      /* Possibly adjust the paths shown in the output (see issue #2723). */
      const char *child_path = FUNC5(relative_to_dir, new_path,
                                                   result_pool);

      if (child_path)
        new_path = child_path;
      else if (! FUNC2(relative_to_dir, new_path))
        new_path = ".";
      else
        return FUNC0(new_path, relative_to_dir);
    }

  {
    apr_size_t len;
    svn_boolean_t is_url1;
    svn_boolean_t is_url2;
    /* ### Holy cow.  Due to anchor/target weirdness, we can't
       simply join dwi->orig_path_1 with path, ditto for
       orig_path_2.  That will work when they're directory URLs, but
       not for file URLs.  Nor can we just use anchor1 and anchor2
       from do_diff(), at least not without some more logic here.
       What a nightmare.

       For now, to distinguish the two paths, we'll just put the
       unique portions of the original targets in parentheses after
       the received path, with ellipses for handwaving.  This makes
       the labels a bit clumsy, but at least distinctive.  Better
       solutions are possible, they'll just take more thought. */

    /* ### BH: We can now just construct the repos_relpath, etc. as the
           anchor is available. See also make_repos_relpath() */

    is_url1 = FUNC7(new_path1);
    is_url2 = FUNC7(new_path2);

    if (is_url1 && is_url2)
      len = FUNC3(FUNC8(new_path1, new_path2,
                                                scratch_pool));
    else if (!is_url1 && !is_url2)
      len = FUNC3(FUNC4(new_path1, new_path2,
                                                   scratch_pool));
    else
      len = 0; /* Path and URL */

    new_path1 += len;
    new_path2 += len;
  }

  /* ### Should diff labels print paths in local style?  Is there
     already a standard for this?  In any case, this code depends on
     a particular style, so not calling svn_dirent_local_style() on the
     paths below.*/

  if (new_path[0] == '\0')
    new_path = ".";

  if (new_path1[0] == '\0')
    new_path1 = new_path;
  else if (FUNC7(new_path1))
    new_path1 = FUNC1(result_pool, "%s\t(%s)", new_path, new_path1);
  else if (new_path1[0] == '/')
    new_path1 = FUNC1(result_pool, "%s\t(...%s)", new_path, new_path1);
  else
    new_path1 = FUNC1(result_pool, "%s\t(.../%s)", new_path, new_path1);

  if (new_path2[0] == '\0')
    new_path2 = new_path;
  else if (FUNC7(new_path2))
    new_path2 = FUNC1(result_pool, "%s\t(%s)", new_path, new_path2);
  else if (new_path2[0] == '/')
    new_path2 = FUNC1(result_pool, "%s\t(...%s)", new_path, new_path2);
  else
    new_path2 = FUNC1(result_pool, "%s\t(.../%s)", new_path, new_path2);

  *index_path = new_path;
  *orig_path_1 = new_path1;
  *orig_path_2 = new_path2;

  return SVN_NO_ERROR;
}