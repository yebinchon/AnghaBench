
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_ra_session_t ;
struct TYPE_11__ {int number; } ;
struct TYPE_12__ {TYPE_1__ value; int kind; } ;
typedef TYPE_2__ svn_opt_revision_t ;
struct TYPE_13__ {scalar_t__ apr_err; } ;
typedef TYPE_3__ svn_error_t ;
typedef int svn_client_ctx_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (TYPE_3__*) ;
 scalar_t__ SVN_ERR_CLIENT_UNRELATED_RESOURCES ;
 scalar_t__ SVN_ERR_FS_NOT_FOUND ;
 TYPE_3__* SVN_NO_ERROR ;
 scalar_t__ strcmp (char const*,char const*) ;
 TYPE_3__* svn_client__repos_locations (char const**,int *,int *,int *,int *,char const*,TYPE_2__*,TYPE_2__*,int *,int *,int *) ;
 int svn_error_clear (TYPE_3__*) ;
 int svn_opt_revision_head ;
 int svn_opt_revision_number ;

__attribute__((used)) static svn_error_t *
same_resource_in_head(svn_boolean_t *same_p,
                      const char *url,
                      svn_revnum_t rev,
                      svn_ra_session_t *ra_session,
                      svn_client_ctx_t *ctx,
                      apr_pool_t *pool)
{
  svn_error_t *err;
  svn_opt_revision_t operative_rev, peg_rev;
  const char *head_url;

  peg_rev.kind = svn_opt_revision_head;
  operative_rev.kind = svn_opt_revision_number;
  operative_rev.value.number = rev;

  err = svn_client__repos_locations(&head_url, ((void*)0), ((void*)0), ((void*)0),
                                    ra_session,
                                    url, &peg_rev,
                                    &operative_rev, ((void*)0),
                                    ctx, pool);
  if (err &&
      ((err->apr_err == SVN_ERR_CLIENT_UNRELATED_RESOURCES) ||
       (err->apr_err == SVN_ERR_FS_NOT_FOUND)))
    {
      svn_error_clear(err);
      *same_p = FALSE;
      return SVN_NO_ERROR;
    }
  else
    SVN_ERR(err);



  *same_p = (strcmp(url, head_url) == 0);

  return SVN_NO_ERROR;
}
