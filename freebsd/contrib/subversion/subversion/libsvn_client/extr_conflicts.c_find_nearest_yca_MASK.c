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
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_ra_session_t ;
struct TYPE_8__ {scalar_t__ apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
typedef  int /*<<< orphan*/  svn_client_ctx_t ;
typedef  int /*<<< orphan*/  svn_client__pathrev_t ;
typedef  int /*<<< orphan*/  apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ SVN_ERR_FS_NOT_FOUND ; 
 TYPE_1__* SVN_NO_ERROR ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC8(svn_client__pathrev_t **yca_locp,
                 const char *repos_relpath1,
                 svn_revnum_t peg_rev1,
                 const char *repos_relpath2,
                 svn_revnum_t peg_rev2,
                 const char *repos_root_url,
                 const char *repos_uuid,
                 svn_ra_session_t *ra_session,
                 svn_client_ctx_t *ctx,
                 apr_pool_t *result_pool,
                 apr_pool_t *scratch_pool)
{
  svn_client__pathrev_t *yca_loc;
  svn_error_t *err;
  apr_pool_t *iterpool;
  const char *p1, *p2;
  apr_size_t c1, c2;

  *yca_locp = NULL;

  iterpool = FUNC5(scratch_pool);

  p1 = repos_relpath1;
  c1 = FUNC3(repos_relpath1);
  while (c1--)
    {
      FUNC4(iterpool);

      p2 = repos_relpath2;
      c2 = FUNC3(repos_relpath2);
      while (c2--)
        {
          err = FUNC0(&yca_loc, p1, peg_rev1, p2, peg_rev2,
                         repos_root_url, repos_uuid, ra_session, ctx,
                         result_pool, iterpool);
          if (err)
            {
              if (err->apr_err == SVN_ERR_FS_NOT_FOUND)
                {
                  FUNC1(err);
                  yca_loc = NULL;
                }
              else
                return FUNC2(err);
            }

          if (yca_loc)
            {
              *yca_locp = yca_loc;
              FUNC6(iterpool);
              return SVN_NO_ERROR;
            }

          p2 = FUNC7(p2, scratch_pool);
        }

      p1 = FUNC7(p1, scratch_pool);
    }

  FUNC6(iterpool);

  return SVN_NO_ERROR;
}