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
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char const* FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC2 (char const*,int /*<<< orphan*/ *) ; 
 char* FUNC3 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 char const* FUNC5 (char const*,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC6 (char const*,char const*) ; 

__attribute__((used)) static const char *
FUNC7(const char *target_abspath,
             const char *target_path,
             const char *local_abspath,
             apr_pool_t *result_pool,
             apr_pool_t *scratch_pool)
{
  const char *la;
  const char *parent_dir_els = "";
  const char *t_relpath;
  const char *p_relpath;

#ifdef SVN_DEBUG
  SVN_ERR_ASSERT_NO_RETURN(svn_dirent_is_absolute(local_abspath));
#endif

  t_relpath = FUNC6(target_abspath, local_abspath);

  if (t_relpath)
    return FUNC5(target_path, t_relpath, result_pool);

  /* An example:
   *  relative_to_path = /a/b/c
   *  path             = /a/x/y/z
   *  result           = ../../x/y/z
   *
   * Another example (Windows specific):
   *  relative_to_path = F:/wc
   *  path             = C:/wc
   *  result           = C:/wc
   */
  /* Skip the common ancestor of both paths, here '/a'. */
  la = FUNC3(target_abspath, local_abspath,
                                       scratch_pool);
  if (*la == '\0')
    {
      /* Nothing in common: E.g. C:/ vs F:/ on Windows */
      return FUNC1(result_pool, local_abspath);
    }
  t_relpath = FUNC6(la, target_abspath);
  p_relpath = FUNC6(la, local_abspath);

  /* In above example, we'd now have:
   *  relative_to_path = b/c
   *  path             = x/y/z */

  /* Count the elements of relative_to_path and prepend as many '..' elements
   * to path. */
  while (*t_relpath)
    {
      t_relpath = FUNC2(t_relpath, scratch_pool);
      parent_dir_els = FUNC5(parent_dir_els, "..", scratch_pool);
    }

  /* This returns a ../ style path relative from the status target */
  return FUNC5(parent_dir_els, p_relpath, result_pool);
}