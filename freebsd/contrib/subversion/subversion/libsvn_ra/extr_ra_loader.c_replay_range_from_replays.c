
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ svn_revnum_t ;
typedef int svn_ra_session_t ;
typedef int (* svn_ra_replay_revstart_callback_t ) (scalar_t__,void*,int const**,void**,int *,int *) ;
typedef int (* svn_ra_replay_revfinish_callback_t ) (scalar_t__,void*,int const*,void*,int *,int *) ;
typedef int svn_error_t ;
typedef int svn_delta_editor_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_ra_replay (int *,scalar_t__,scalar_t__,int ,int const*,void*,int *) ;
 int svn_ra_rev_proplist (int *,scalar_t__,int **,int *) ;

__attribute__((used)) static svn_error_t *
replay_range_from_replays(svn_ra_session_t *session,
                          svn_revnum_t start_revision,
                          svn_revnum_t end_revision,
                          svn_revnum_t low_water_mark,
                          svn_boolean_t text_deltas,
                          svn_ra_replay_revstart_callback_t revstart_func,
                          svn_ra_replay_revfinish_callback_t revfinish_func,
                          void *replay_baton,
                          apr_pool_t *scratch_pool)
{
  apr_pool_t *iterpool = svn_pool_create(scratch_pool);
  svn_revnum_t rev;

  for (rev = start_revision ; rev <= end_revision ; rev++)
    {
      const svn_delta_editor_t *editor;
      void *edit_baton;
      apr_hash_t *rev_props;

      svn_pool_clear(iterpool);

      SVN_ERR(svn_ra_rev_proplist(session, rev, &rev_props, iterpool));

      SVN_ERR(revstart_func(rev, replay_baton,
                            &editor, &edit_baton,
                            rev_props,
                            iterpool));
      SVN_ERR(svn_ra_replay(session, rev, low_water_mark,
                            text_deltas, editor, edit_baton,
                            iterpool));
      SVN_ERR(revfinish_func(rev, replay_baton,
                             editor, edit_baton,
                             rev_props,
                             iterpool));
    }
  svn_pool_destroy(iterpool);

  return SVN_NO_ERROR;
}
