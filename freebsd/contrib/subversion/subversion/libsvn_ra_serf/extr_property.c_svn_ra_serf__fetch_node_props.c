
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_ra_serf__session_t ;
typedef int svn_ra_serf__handler_t ;
typedef int svn_ra_serf__dav_props_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * apr_hash_make (int *) ;
 int deliver_node_props ;
 int svn_ra_serf__context_run_one (int *,int *) ;
 int svn_ra_serf__create_propfind_handler (int **,int *,char const*,int ,char*,int const*,int ,int *,int *) ;

svn_error_t *
svn_ra_serf__fetch_node_props(apr_hash_t **results,
                              svn_ra_serf__session_t *session,
                              const char *url,
                              svn_revnum_t revision,
                              const svn_ra_serf__dav_props_t *which_props,
                              apr_pool_t *result_pool,
                              apr_pool_t *scratch_pool)
{
  apr_hash_t *props;
  svn_ra_serf__handler_t *handler;

  props = apr_hash_make(result_pool);

  SVN_ERR(svn_ra_serf__create_propfind_handler(&handler, session,
                                               url, revision, "0", which_props,
                                               deliver_node_props,
                                               props, scratch_pool));

  SVN_ERR(svn_ra_serf__context_run_one(handler, scratch_pool));

  *results = props;
  return SVN_NO_ERROR;
}
