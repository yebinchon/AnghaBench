#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* data; int len; } ;
typedef  TYPE_1__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_UNSUPPORTED_FEATURE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char const**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__**,char const*,int /*<<< orphan*/ *) ; 
 int FUNC6 (char const*,char*,int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_1__ const**,TYPE_1__*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC10(svn_string_t **dest,
                 const char *path,
                 apr_pool_t *pool)
{
#if defined(HAVE_READLINK)
  svn_string_t dest_apr;
  const char *path_apr;
  char buf[1025];
  ssize_t rv;

  SVN_ERR(cstring_from_utf8(&path_apr, path, pool));
  do {
    rv = readlink(path_apr, buf, sizeof(buf) - 1);
  } while (rv == -1 && APR_STATUS_IS_EINTR(apr_get_os_error()));

  if (rv == -1)
    return svn_error_wrap_apr(apr_get_os_error(),
                              _("Can't read contents of link"));

  buf[rv] = '\0';
  dest_apr.data = buf;
  dest_apr.len = rv;

  /* ### Cast needed, one of these interfaces is wrong */
  return svn_utf_string_to_utf8((const svn_string_t **)dest, &dest_apr, pool);
#elif defined(WIN32)
  return io_win_read_link(dest, path, pool);
#else
  return FUNC7(SVN_ERR_UNSUPPORTED_FEATURE, NULL,
                          FUNC2("Symbolic links are not supported on this "
                            "platform"));
#endif
}