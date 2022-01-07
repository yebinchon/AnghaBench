
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_ra_session_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int all_props ;
 int * serf__rev_proplist (int *,int ,int ,int **,int *,int *) ;
 int * svn_error_trace (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

__attribute__((used)) static svn_error_t *
svn_ra_serf__rev_proplist(svn_ra_session_t *ra_session,
                          svn_revnum_t rev,
                          apr_hash_t **ret_props,
                          apr_pool_t *result_pool)
{
  apr_pool_t *scratch_pool = svn_pool_create(result_pool);
  svn_error_t *err;

  err = serf__rev_proplist(ra_session, rev, all_props, ret_props,
                           result_pool, scratch_pool);

  svn_pool_destroy(scratch_pool);
  return svn_error_trace(err);
}
