
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_7__ {TYPE_2__* priv; } ;
typedef TYPE_1__ svn_ra_session_t ;
struct TYPE_8__ {int rev_stub; } ;
typedef TYPE_2__ svn_ra_serf__session_t ;
typedef int svn_ra_serf__handler_t ;
typedef int svn_ra_serf__dav_props_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 scalar_t__ SVN_RA_SERF__HAVE_HTTPV2_SUPPORT (TYPE_2__*) ;
 int * apr_hash_make (int *) ;
 char* apr_psprintf (int *,char*,int ,int ) ;
 int svn_ra_serf__context_run_one (int *,int *) ;
 int svn_ra_serf__create_propfind_handler (int **,TYPE_2__*,char const*,int ,char*,int const*,int ,int *,int *) ;
 int svn_ra_serf__deliver_svn_props ;
 int svn_ra_serf__discover_vcc (char const**,TYPE_2__*,int *) ;
 int svn_ra_serf__keep_only_regular_props (int *,int *) ;

__attribute__((used)) static svn_error_t *
serf__rev_proplist(svn_ra_session_t *ra_session,
                   svn_revnum_t rev,
                   const svn_ra_serf__dav_props_t *fetch_props,
                   apr_hash_t **ret_props,
                   apr_pool_t *result_pool,
                   apr_pool_t *scratch_pool)
{
  svn_ra_serf__session_t *session = ra_session->priv;
  apr_hash_t *props;
  const char *propfind_path;
  svn_ra_serf__handler_t *handler;

  if (SVN_RA_SERF__HAVE_HTTPV2_SUPPORT(session))
    {
      propfind_path = apr_psprintf(scratch_pool, "%s/%ld", session->rev_stub,
                                   rev);





      rev = SVN_INVALID_REVNUM;
    }
  else
    {

      SVN_ERR(svn_ra_serf__discover_vcc(&propfind_path, session,
                                        scratch_pool));
    }

  props = apr_hash_make(result_pool);
  SVN_ERR(svn_ra_serf__create_propfind_handler(&handler, session,
                                               propfind_path, rev, "0",
                                               fetch_props,
                                               svn_ra_serf__deliver_svn_props,
                                               props,
                                               scratch_pool));

  SVN_ERR(svn_ra_serf__context_run_one(handler, scratch_pool));

  svn_ra_serf__keep_only_regular_props(props, scratch_pool);

  *ret_props = props;

  return SVN_NO_ERROR;
}
