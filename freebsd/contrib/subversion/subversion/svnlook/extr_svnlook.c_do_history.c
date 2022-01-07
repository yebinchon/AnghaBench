
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rev_id; int fs; int limit; scalar_t__ show_ids; } ;
typedef TYPE_1__ svnlook_ctxt_t ;
typedef int svn_error_t ;
struct print_history_baton {scalar_t__ count; int limit; scalar_t__ show_ids; int fs; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 int print_history ;
 int svn_cmdline_printf (int *,int ) ;
 int svn_repos_history2 (int ,char const*,int ,struct print_history_baton*,int *,int *,int ,int ,int ,int *) ;

__attribute__((used)) static svn_error_t *
do_history(svnlook_ctxt_t *c,
           const char *path,
           apr_pool_t *pool)
{
  struct print_history_baton args;

  if (c->show_ids)
    {
      SVN_ERR(svn_cmdline_printf(pool, _("REVISION   PATH <ID>\n"
                                         "--------   ---------\n")));
    }
  else
    {
      SVN_ERR(svn_cmdline_printf(pool, _("REVISION   PATH\n"
                                         "--------   ----\n")));
    }




  args.fs = c->fs;
  args.show_ids = c->show_ids;
  args.limit = c->limit;
  args.count = 0;
  SVN_ERR(svn_repos_history2(c->fs, path, print_history, &args,
                             ((void*)0), ((void*)0), 0, c->rev_id, TRUE, pool));
  return SVN_NO_ERROR;
}
