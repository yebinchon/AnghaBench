
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int fs; } ;
typedef TYPE_1__ svnlook_ctxt_t ;
struct TYPE_6__ {char* comment; int owner; int token; scalar_t__ expiration_date; scalar_t__ creation_date; } ;
typedef TYPE_2__ svn_lock_t ;
typedef int svn_error_t ;
struct svnlook_opt_state {int arg1; } ;
typedef int apr_pool_t ;
typedef int apr_getopt_t ;


 int Q_ (char*,char*,int) ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int check_number_of_args (struct svnlook_opt_state*,int) ;
 int get_ctxt_baton (TYPE_1__**,struct svnlook_opt_state*,int *) ;
 int svn_cmdline_printf (int *,int ,...) ;
 int svn_cstring_count_newlines (char*) ;
 int svn_fs_get_lock (TYPE_2__**,int ,int ,int *) ;
 char* svn_time_to_human_cstring (scalar_t__,int *) ;

__attribute__((used)) static svn_error_t *
subcommand_lock(apr_getopt_t *os, void *baton, apr_pool_t *pool)
{
  struct svnlook_opt_state *opt_state = baton;
  svnlook_ctxt_t *c;
  svn_lock_t *lock;

  SVN_ERR(check_number_of_args(opt_state, 1));

  SVN_ERR(get_ctxt_baton(&c, opt_state, pool));

  SVN_ERR(svn_fs_get_lock(&lock, c->fs, opt_state->arg1, pool));

  if (lock)
    {
      const char *cr_date, *exp_date = "";
      int comment_lines = 0;

      cr_date = svn_time_to_human_cstring(lock->creation_date, pool);

      if (lock->expiration_date)
        exp_date = svn_time_to_human_cstring(lock->expiration_date, pool);

      if (lock->comment)
        comment_lines = svn_cstring_count_newlines(lock->comment) + 1;

      SVN_ERR(svn_cmdline_printf(pool, _("UUID Token: %s\n"), lock->token));
      SVN_ERR(svn_cmdline_printf(pool, _("Owner: %s\n"), lock->owner));
      SVN_ERR(svn_cmdline_printf(pool, _("Created: %s\n"), cr_date));
      SVN_ERR(svn_cmdline_printf(pool, _("Expires: %s\n"), exp_date));
      SVN_ERR(svn_cmdline_printf(pool,
                                 Q_("Comment (%i line):\n%s\n",
                                    "Comment (%i lines):\n%s\n",
                                    comment_lines),
                                 comment_lines,
                                 lock->comment ? lock->comment : ""));
    }

  return SVN_NO_ERROR;
}
