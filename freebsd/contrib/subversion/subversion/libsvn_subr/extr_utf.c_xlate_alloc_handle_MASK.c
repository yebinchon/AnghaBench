#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xlate_handle_t ;
struct TYPE_5__ {char const* frompage; char const* topage; int /*<<< orphan*/ * next; int /*<<< orphan*/  valid; int /*<<< orphan*/ * handle; } ;
typedef  TYPE_1__ xlate_handle_node_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_strerr ;
typedef  scalar_t__ apr_status_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ APR_SUCCESS ; 
 char const* SVN_APR_DEFAULT_CHARSET ; 
 char const* SVN_APR_LOCALE_CHARSET ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  SVN_ERR_PLUGIN_LOAD_FAILURE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  apr_pool_cleanup_null ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,...) ; 
 char const* FUNC7 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ **,char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,char*,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ **,char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xlate_handle_node_cleanup ; 

__attribute__((used)) static svn_error_t *
FUNC13(xlate_handle_node_t **ret,
                   const char *topage, const char *frompage,
                   apr_pool_t *pool)
{
  apr_status_t apr_err;
  xlate_handle_t *handle;
  const char *name;

  /* The error handling doesn't support the following cases, since we don't
     use them currently.  Catch this here. */
  FUNC2(frompage != SVN_APR_DEFAULT_CHARSET
                 && topage != SVN_APR_DEFAULT_CHARSET
                 && (frompage != SVN_APR_LOCALE_CHARSET
                     || topage != SVN_APR_LOCALE_CHARSET));

  /* Try to create a handle. */
#if defined(WIN32)
  apr_err = svn_subr__win32_xlate_open(&handle, topage,
                                       frompage, pool);
  name = "win32-xlate: ";
#else
  apr_err = FUNC8(&handle, topage, frompage, pool);
  name = "APR: ";
#endif

  if (FUNC0(apr_err) || FUNC1(apr_err))
    handle = NULL;
  else if (apr_err != APR_SUCCESS)
    {
      const char *errstr;
      char apr_strerr[512];

      /* Can't use svn_error_wrap_apr here because it calls functions in
         this file, leading to infinite recursion. */
      if (frompage == SVN_APR_LOCALE_CHARSET)
        errstr = FUNC6(pool,
                              FUNC3("Can't create a character converter from "
                                "native encoding to '%s'"), topage);
      else if (topage == SVN_APR_LOCALE_CHARSET)
        errstr = FUNC6(pool,
                              FUNC3("Can't create a character converter from "
                                "'%s' to native encoding"), frompage);
      else
        errstr = FUNC6(pool,
                              FUNC3("Can't create a character converter from "
                                "'%s' to '%s'"), frompage, topage);

      /* Just put the error on the stack, since svn_error_create duplicates it
         later.  APR_STRERR will be in the local encoding, not in UTF-8, though.
       */
      FUNC11(apr_err, apr_strerr, sizeof(apr_strerr));
      return FUNC10(SVN_ERR_PLUGIN_LOAD_FAILURE,
                               FUNC9(apr_err, NULL, apr_strerr),
                               "%s%s", name, errstr);
    }

  /* Allocate and initialize the node. */
  *ret = FUNC4(pool, sizeof(xlate_handle_node_t));
  (*ret)->handle = handle;
  (*ret)->valid = TRUE;
  (*ret)->frompage = ((frompage != SVN_APR_LOCALE_CHARSET)
                      ? FUNC7(pool, frompage) : frompage);
  (*ret)->topage = ((topage != SVN_APR_LOCALE_CHARSET)
                    ? FUNC7(pool, topage) : topage);
  (*ret)->next = NULL;

  /* If we are called from inside a pool cleanup handler, the just created
     xlate handle will be closed when that handler returns by a newly
     registered cleanup handler, however, the handle is still cached by us.
     To prevent this, we register a cleanup handler that will reset the valid
     flag of our node, so we don't use an invalid handle. */
  if (handle)
    FUNC5(pool, *ret, xlate_handle_node_cleanup,
                              apr_pool_cleanup_null);

  return SVN_NO_ERROR;
}