
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int apr_err; } ;
typedef TYPE_1__ svn_error_t ;
struct log_msg_baton {int tmpfile_left; int pool; } ;
typedef int apr_pool_t ;


 int FALSE ;
 int _ (char*) ;
 int svn_dirent_local_style (int ,int *) ;
 int svn_error_compose (TYPE_1__*,int ) ;
 int svn_error_create (int ,TYPE_1__*,int ) ;
 TYPE_1__* svn_error_createf (int ,int *,int ,int ) ;
 TYPE_1__* svn_io_remove_file2 (int ,int ,int ) ;

svn_error_t *
svn_cl__cleanup_log_msg(void *log_msg_baton,
                        svn_error_t *commit_err,
                        apr_pool_t *pool)
{
  struct log_msg_baton *lmb = log_msg_baton;
  svn_error_t *err;



  if ((! lmb) || (! lmb->tmpfile_left))
    return commit_err;


  if (! commit_err)
    return svn_io_remove_file2(lmb->tmpfile_left, FALSE, lmb->pool);







  err = svn_error_createf(commit_err->apr_err, ((void*)0),
                          _("   '%s'"),
                          svn_dirent_local_style(lmb->tmpfile_left, pool));
  svn_error_compose(commit_err,
                    svn_error_create(commit_err->apr_err, err,
                      _("Your commit message was left in "
                        "a temporary file:")));
  return commit_err;
}
