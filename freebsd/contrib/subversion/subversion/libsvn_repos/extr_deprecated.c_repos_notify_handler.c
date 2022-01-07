
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_stream_t ;
struct TYPE_3__ {int action; int old_revision; int path; int node_action; int new_revision; int revision; int warning_str; } ;
typedef TYPE_1__ svn_repos_notify_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int SVN_INVALID_REVNUM ;
 int SVN_PROP_MERGEINFO ;
 char* _ (char*) ;
 int svn_error_clear (int ) ;
 int svn_stream_printf (int *,int *,char*,int ,...) ;
 int svn_stream_puts (int *,int ) ;
 int svn_stream_write (int *,char*,int*) ;

__attribute__((used)) static void
repos_notify_handler(void *baton,
                     const svn_repos_notify_t *notify,
                     apr_pool_t *scratch_pool)
{
  svn_stream_t *feedback_stream = baton;
  apr_size_t len;

  switch (notify->action)
  {
    case 128:
      svn_error_clear(svn_stream_puts(feedback_stream, notify->warning_str));
      return;

    case 136:
      svn_error_clear(svn_stream_printf(feedback_stream, scratch_pool,
                                        _("* Dumped revision %ld.\n"),
                                        notify->revision));
      return;

    case 129:
      svn_error_clear(svn_stream_printf(feedback_stream, scratch_pool,
                                        _("* Verified revision %ld.\n"),
                                        notify->revision));
      return;

    case 131:
      if (notify->old_revision == SVN_INVALID_REVNUM)
        {
          svn_error_clear(svn_stream_printf(feedback_stream, scratch_pool,
                            _("\n------- Committed revision %ld >>>\n\n"),
                            notify->new_revision));
        }
      else
        {
          svn_error_clear(svn_stream_printf(feedback_stream, scratch_pool,
                            _("\n------- Committed new rev %ld"
                              " (loaded from original rev %ld"
                              ") >>>\n\n"), notify->new_revision,
                              notify->old_revision));
        }
      return;

    case 133:
      {
        switch (notify->node_action)
        {
          case 139:
            svn_error_clear(svn_stream_printf(feedback_stream, scratch_pool,
                                  _("     * editing path : %s ..."),
                                  notify->path));
            break;

          case 138:
            svn_error_clear(svn_stream_printf(feedback_stream, scratch_pool,
                                  _("     * deleting path : %s ..."),
                                  notify->path));
            break;

          case 140:
            svn_error_clear(svn_stream_printf(feedback_stream, scratch_pool,
                                  _("     * adding path : %s ..."),
                                  notify->path));
            break;

          case 137:
            svn_error_clear(svn_stream_printf(feedback_stream, scratch_pool,
                                  _("     * replacing path : %s ..."),
                                  notify->path));
            break;

        }
      }
      return;

    case 134:
      len = 7;
      svn_error_clear(svn_stream_write(feedback_stream, _(" done.\n"), &len));
      return;

    case 135:
      len = 9;
      svn_error_clear(svn_stream_write(feedback_stream, "COPIED...", &len));
      return;

    case 130:
      svn_error_clear(svn_stream_printf(feedback_stream, scratch_pool,
                                _("<<< Started new transaction, based on "
                                  "original revision %ld\n"),
                                notify->old_revision));
      return;

    case 132:
      svn_error_clear(svn_stream_printf(feedback_stream, scratch_pool,
                                _(" removing '\\r' from %s ..."),
                                SVN_PROP_MERGEINFO));
      return;

    default:
      return;
  }
}
