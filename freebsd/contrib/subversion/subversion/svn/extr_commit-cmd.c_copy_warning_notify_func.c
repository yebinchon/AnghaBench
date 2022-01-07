
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ kind; scalar_t__ action; } ;
typedef TYPE_1__ svn_wc_notify_t ;
typedef int svn_error_t ;
struct copy_warning_notify_baton {scalar_t__ depth; scalar_t__ warned; int wrapped_baton; int (* wrapped_func ) (int ,TYPE_1__ const*,int *) ;} ;
typedef int apr_pool_t ;


 scalar_t__ TRUE ;
 int _ (char*) ;
 int stub1 (int ,TYPE_1__ const*,int *) ;
 int * svn_cmdline_printf (int *,int ,int ) ;
 scalar_t__ svn_depth_infinity ;
 int svn_depth_to_word (scalar_t__) ;
 int svn_error_clear (int *) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_wc_notify_commit_copied ;
 scalar_t__ svn_wc_notify_commit_copied_replaced ;

__attribute__((used)) static void
copy_warning_notify_func(void *baton,
                         const svn_wc_notify_t *notify,
                         apr_pool_t *pool)
{
  struct copy_warning_notify_baton *b = baton;


  if (b->wrapped_func)
    b->wrapped_func(b->wrapped_baton, notify, pool);





  if ((! b->warned)
      && (b->depth < svn_depth_infinity)
      && (notify->kind == svn_node_dir)
      && ((notify->action == svn_wc_notify_commit_copied) ||
          (notify->action == svn_wc_notify_commit_copied_replaced)))
    {
      svn_error_t *err;
      err = svn_cmdline_printf(pool,
                               _("svn: The depth of this commit is '%s', "
                                 "but copies are always performed "
                                 "recursively in the repository.\n"),
                               svn_depth_to_word(b->depth));

      svn_error_clear(err);


      b->warned = TRUE;
    }
}
