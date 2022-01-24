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
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  SVN_VA_NULL ; 
 scalar_t__ TRUE ; 
 char const* FUNC0 (int /*<<< orphan*/ *,char const*,char const* const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const* const,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const* const,scalar_t__*,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_file ; 

__attribute__((used)) static const char*
FUNC4(const char *hook, svn_boolean_t *broken_link, apr_pool_t *pool)
{
  static const char* const check_extns[] = {
#ifdef WIN32
  /* For WIN32, we need to check with file name extension(s) added.

     As Windows Scripting Host (.wsf) files can accommodate (at least)
     JavaScript (.js) and VB Script (.vbs) code, extensions for the
     corresponding file types need not be enumerated explicitly. */
    ".exe", ".cmd", ".bat", ".wsf", /* ### Any other extensions? */
#else
    "",
#endif
    NULL
  };

  const char *const *extn;
  svn_error_t *err = NULL;
  svn_boolean_t is_special;
  for (extn = check_extns; *extn; ++extn)
    {
      const char *const hook_path =
        (**extn ? FUNC0(pool, hook, *extn, SVN_VA_NULL) : hook);

      svn_node_kind_t kind;
      if (!(err = FUNC2(hook_path, &kind, pool))
          && kind == svn_node_file)
        {
          *broken_link = FALSE;
          return hook_path;
        }
      FUNC1(err);
      if (!(err = FUNC3(hook_path, &kind, &is_special,
                                            pool))
          && is_special)
        {
          *broken_link = TRUE;
          return hook_path;
        }
      FUNC1(err);
    }
  return NULL;
}