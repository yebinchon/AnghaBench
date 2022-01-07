
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
struct edit_baton {int cancel_baton; int cancel_func; int status_baton; int status_func; int ignores; int no_ignore; int get_all; int default_depth; int target_abspath; int db; scalar_t__ root_opened; } ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_wc__internal_walk_status (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int *) ;

__attribute__((used)) static svn_error_t *
close_edit(void *edit_baton,
           apr_pool_t *pool)
{
  struct edit_baton *eb = edit_baton;




  if (eb->root_opened)
    return SVN_NO_ERROR;

  SVN_ERR(svn_wc__internal_walk_status(eb->db,
                                       eb->target_abspath,
                                       eb->default_depth,
                                       eb->get_all,
                                       eb->no_ignore,
                                       FALSE,
                                       eb->ignores,
                                       eb->status_func,
                                       eb->status_baton,
                                       eb->cancel_func,
                                       eb->cancel_baton,
                                       pool));

  return SVN_NO_ERROR;
}
