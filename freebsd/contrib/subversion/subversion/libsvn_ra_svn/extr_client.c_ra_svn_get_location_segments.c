
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_ra_session_t ;
typedef int svn_location_segment_receiver_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int perform_get_location_segments (int **,int *,char const*,int ,int ,int ,int ,void*,int *) ;
 char* reparent_path (int *,char const*,int *) ;
 int * svn_error_compose_create (int *,int *) ;
 int * svn_error_trace (int ) ;

__attribute__((used)) static svn_error_t *
ra_svn_get_location_segments(svn_ra_session_t *session,
                             const char *path,
                             svn_revnum_t peg_revision,
                             svn_revnum_t start_rev,
                             svn_revnum_t end_rev,
                             svn_location_segment_receiver_t receiver,
                             void *receiver_baton,
                             apr_pool_t *pool)
{
  svn_error_t *outer_err = SVN_NO_ERROR;
  svn_error_t *err;

  path = reparent_path(session, path, pool);
  err = svn_error_trace(
            perform_get_location_segments(&outer_err, session, path,
                                          peg_revision, start_rev, end_rev,
                                          receiver, receiver_baton, pool));
  return svn_error_compose_create(outer_err, err);
}
