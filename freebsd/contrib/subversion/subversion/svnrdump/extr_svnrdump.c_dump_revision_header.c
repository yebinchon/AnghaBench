
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_revnum_t ;
typedef int svn_ra_session_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int svn_ra_rev_proplist (int *,int ,int **,int *) ;
 int svn_repos__dump_revision_record (int *,int ,int *,int *,int ,int *) ;

__attribute__((used)) static svn_error_t *
dump_revision_header(svn_ra_session_t *session,
                     svn_stream_t *stdout_stream,
                     svn_revnum_t revision,
                     apr_pool_t *pool)
{
  apr_hash_t *prophash;

  SVN_ERR(svn_ra_rev_proplist(session, revision, &prophash, pool));
  SVN_ERR(svn_repos__dump_revision_record(stdout_stream, revision, ((void*)0),
                                          prophash,
                                          TRUE ,
                                          pool));
  return SVN_NO_ERROR;
}
