
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_ra_session_t ;
typedef int svn_ra_replay_revstart_callback_t ;
typedef int svn_ra_replay_revfinish_callback_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR_RA_NOT_IMPLEMENTED ;
 int * svn_error_create (int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
svn_ra_local__replay_range(svn_ra_session_t *session,
                           svn_revnum_t start_revision,
                           svn_revnum_t end_revision,
                           svn_revnum_t low_water_mark,
                           svn_boolean_t send_deltas,
                           svn_ra_replay_revstart_callback_t revstart_func,
                           svn_ra_replay_revfinish_callback_t revfinish_func,
                           void *replay_baton,
                           apr_pool_t *pool)
{
  return svn_error_create(SVN_ERR_RA_NOT_IMPLEMENTED, ((void*)0), ((void*)0));
}
