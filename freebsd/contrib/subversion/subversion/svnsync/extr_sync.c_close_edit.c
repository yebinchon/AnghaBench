
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_4__ {int wrapped_edit_baton; TYPE_1__* wrapped_editor; scalar_t__ svnmerge_blocked; scalar_t__ svnmerge_migrated; scalar_t__ mergeinfo_stripped; scalar_t__ mergeinfo_tweaked; scalar_t__ got_textdeltas; int quiet; int base_revision; int called_open_root; } ;
typedef TYPE_2__ edit_baton_t ;
typedef int apr_pool_t ;
struct TYPE_3__ {int * (* close_edit ) (int ,int *) ;int (* close_directory ) (void*,int *) ;int (* open_root ) (int ,int ,int *,void**) ;} ;


 int SVN_ERR (int ) ;
 int stub1 (int ,int ,int *,void**) ;
 int stub2 (void*,int *) ;
 int * stub3 (int ,int *) ;
 int svn_cmdline_printf (int *,char*) ;

__attribute__((used)) static svn_error_t *
close_edit(void *edit_baton,
           apr_pool_t *pool)
{
  edit_baton_t *eb = edit_baton;







  if (! eb->called_open_root)
    {
      void *baton;
      SVN_ERR(eb->wrapped_editor->open_root(eb->wrapped_edit_baton,
                                            eb->base_revision, pool,
                                            &baton));
      SVN_ERR(eb->wrapped_editor->close_directory(baton, pool));
    }

  if (! eb->quiet)
    {
      if (eb->got_textdeltas)
        SVN_ERR(svn_cmdline_printf(pool, "\n"));
      if (eb->mergeinfo_tweaked)
        SVN_ERR(svn_cmdline_printf(pool,
                                   "NOTE: Adjusted Subversion mergeinfo in "
                                   "this revision.\n"));
      if (eb->mergeinfo_stripped)
        SVN_ERR(svn_cmdline_printf(pool,
                                   "NOTE: Dropped Subversion mergeinfo "
                                   "from this revision.\n"));
      if (eb->svnmerge_migrated)
        SVN_ERR(svn_cmdline_printf(pool,
                                   "NOTE: Migrated 'svnmerge-integrated' in "
                                   "this revision.\n"));
      if (eb->svnmerge_blocked)
        SVN_ERR(svn_cmdline_printf(pool,
                                   "NOTE: Saw 'svnmerge-blocked' in this "
                                   "revision (but didn't migrate it).\n"));
    }

  return eb->wrapped_editor->close_edit(eb->wrapped_edit_baton, pool);
}
