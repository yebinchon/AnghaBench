
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ svn_revnum_t ;
struct TYPE_6__ {int conn; } ;
typedef TYPE_1__ svn_ra_svn__session_baton_t ;
typedef int svn_ra_svn__list_t ;
struct TYPE_7__ {TYPE_1__* priv; } ;
typedef TYPE_2__ svn_ra_session_t ;
typedef int (* svn_ra_replay_revstart_callback_t ) (scalar_t__,void*,int const**,void**,int *,int *) ;
typedef int (* svn_ra_replay_revfinish_callback_t ) (scalar_t__,void*,int const*,void*,int *,int *) ;
typedef int svn_error_t ;
typedef int svn_delta_editor_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int FALSE ;
 int N_ (char*) ;
 int SVN_ERR (int ) ;
 int SVN_ERR_RA_SVN_EDIT_ABORTED ;
 int SVN_ERR_RA_SVN_MALFORMED_DATA ;
 int TRUE ;
 int _ (char*) ;
 int ensure_exact_server_parent (TYPE_2__*,int *) ;
 int handle_auth_request (TYPE_1__*,int *) ;
 int handle_unsupported_cmd (int ,int ) ;
 scalar_t__ strcmp (char const*,char*) ;
 int * svn_error_create (int ,int *,int ) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 int * svn_error_trace (int ) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_ra_svn__handle_failure_status (int *) ;
 int svn_ra_svn__parse_proplist (int *,int *,int **) ;
 int svn_ra_svn__read_cmd_response (int ,int *,char*) ;
 int svn_ra_svn__read_tuple (int ,int *,char*,char const**,int **) ;
 int svn_ra_svn__write_cmd_replay_range (int ,int *,scalar_t__,scalar_t__,scalar_t__,int ) ;
 int svn_ra_svn_drive_editor2 (int ,int *,int const*,void*,int *,int ) ;

__attribute__((used)) static svn_error_t *
ra_svn_replay_range(svn_ra_session_t *session,
                    svn_revnum_t start_revision,
                    svn_revnum_t end_revision,
                    svn_revnum_t low_water_mark,
                    svn_boolean_t send_deltas,
                    svn_ra_replay_revstart_callback_t revstart_func,
                    svn_ra_replay_revfinish_callback_t revfinish_func,
                    void *replay_baton,
                    apr_pool_t *pool)
{
  svn_ra_svn__session_baton_t *sess = session->priv;
  apr_pool_t *iterpool;
  svn_revnum_t rev;
  svn_boolean_t drive_aborted = FALSE;



  SVN_ERR(ensure_exact_server_parent(session, pool));
  SVN_ERR(svn_ra_svn__write_cmd_replay_range(sess->conn, pool,
                                             start_revision, end_revision,
                                             low_water_mark, send_deltas));

  SVN_ERR(handle_unsupported_cmd(handle_auth_request(sess, pool),
                                 N_("Server doesn't support the "
                                    "replay-range command")));

  iterpool = svn_pool_create(pool);
  for (rev = start_revision; rev <= end_revision; rev++)
    {
      const svn_delta_editor_t *editor;
      void *edit_baton;
      apr_hash_t *rev_props;
      const char *word;
      svn_ra_svn__list_t *list;

      svn_pool_clear(iterpool);

      SVN_ERR(svn_ra_svn__read_tuple(sess->conn, iterpool,
                                     "wl", &word, &list));

      if (strcmp(word, "revprops") != 0)
        {
          if (strcmp(word, "failure") == 0)
            SVN_ERR(svn_ra_svn__handle_failure_status(list));

          return svn_error_createf(SVN_ERR_RA_SVN_MALFORMED_DATA, ((void*)0),
                                   _("Expected 'revprops', found '%s'"),
                                   word);
        }

      SVN_ERR(svn_ra_svn__parse_proplist(list, iterpool, &rev_props));

      SVN_ERR(revstart_func(rev, replay_baton,
                            &editor, &edit_baton,
                            rev_props,
                            iterpool));
      SVN_ERR(svn_ra_svn_drive_editor2(sess->conn, iterpool,
                                       editor, edit_baton,
                                       &drive_aborted, TRUE));


      if (drive_aborted) {
        svn_pool_destroy(iterpool);
        return svn_error_create(SVN_ERR_RA_SVN_EDIT_ABORTED, ((void*)0),
                                _("Error while replaying commit"));
      }
      SVN_ERR(revfinish_func(rev, replay_baton,
                             editor, edit_baton,
                             rev_props,
                             iterpool));
    }
  svn_pool_destroy(iterpool);

  return svn_error_trace(svn_ra_svn__read_cmd_response(sess->conn, pool, ""));
}
