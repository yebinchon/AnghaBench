
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_ra_session_t ;
typedef int svn_node_kind_t ;
struct TYPE_8__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 scalar_t__ SVN_ERR_RA_ILLEGAL_URL ;
 TYPE_1__* SVN_NO_ERROR ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_error_trace (TYPE_1__*) ;
 int svn_node_unknown ;
 int svn_ra_check_path (int *,char*,int ,int *,int *) ;
 TYPE_1__* svn_ra_reparent (int *,char const*,int *) ;

__attribute__((used)) static svn_error_t *
reparent_session_and_fetch_node_kind(svn_node_kind_t *node_kind,
                                     svn_ra_session_t *ra_session,
                                     const char *url,
                                     svn_revnum_t peg_rev,
                                     apr_pool_t *scratch_pool)
{
  svn_error_t *err;

  err = svn_ra_reparent(ra_session, url, scratch_pool);
  if (err)
    {
      if (err->apr_err == SVN_ERR_RA_ILLEGAL_URL)
        {
          svn_error_clear(err);
          *node_kind = svn_node_unknown;
          return SVN_NO_ERROR;
        }

      return svn_error_trace(err);
    }

  SVN_ERR(svn_ra_check_path(ra_session, "", peg_rev, node_kind, scratch_pool));

  return SVN_NO_ERROR;
}
