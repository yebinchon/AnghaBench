#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_opt_revision_t ;
struct TYPE_9__ {scalar_t__ apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
typedef  int /*<<< orphan*/  svn_client_ctx_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SVN_ERR_CLIENT_BAD_REVISION ; 
 scalar_t__ SVN_ERR_ENTRY_NOT_FOUND ; 
 int /*<<< orphan*/  SVN_ERR_ILLEGAL_TARGET ; 
 scalar_t__ SVN_ERR_RA_CANNOT_CREATE_SESSION ; 
 scalar_t__ SVN_ERR_WC_NOT_WORKING_COPY ; 
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ; 
 TYPE_1__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char const*,char const*) ; 
 TYPE_1__* FUNC3 (char const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char const**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 

__attribute__((used)) static svn_error_t *
FUNC10(const char **root_url,
                         const char *target,
                         svn_client_ctx_t *ctx,
                         apr_pool_t *pool)
{
  svn_error_t *err;
  const char *tmp_root_url;
  const char *truepath;
  svn_opt_revision_t opt_rev;

  FUNC0(FUNC8(&opt_rev, &truepath, target, pool));
  if (!FUNC9(truepath))
    FUNC0(FUNC4(&truepath, truepath, pool));

  err = FUNC3(&tmp_root_url, NULL, truepath,
                                  ctx, pool, pool);

  if (err)
    {
      /* It is OK if the given target does not exist, it just means
       * we will not be able to determine the root url from this particular
       * argument.
       *
       * If the target itself is a URL to a repository that does not exist,
       * that's fine, too. The callers will deal with this argument in an
       * appropriate manner if it does not make any sense.
       *
       * Also tolerate locally added targets ("bad revision" error).
       */
      if ((err->apr_err == SVN_ERR_ENTRY_NOT_FOUND)
          || (err->apr_err == SVN_ERR_WC_PATH_NOT_FOUND)
          || (err->apr_err == SVN_ERR_WC_NOT_WORKING_COPY)
          || (err->apr_err == SVN_ERR_RA_CANNOT_CREATE_SESSION)
          || (err->apr_err == SVN_ERR_CLIENT_BAD_REVISION))
        {
          FUNC5(err);
          return SVN_NO_ERROR;
        }
      else
        return FUNC7(err);
     }

   if (*root_url && tmp_root_url)
     {
       if (FUNC2(*root_url, tmp_root_url) != 0)
         return FUNC6(SVN_ERR_ILLEGAL_TARGET, NULL,
                                  FUNC1("All non-relative targets must have "
                                    "the same root URL"));
     }
   else
     *root_url = tmp_root_url;

   return SVN_NO_ERROR;
}