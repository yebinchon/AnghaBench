
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ svn_wc__db_status_t ;
typedef int svn_revnum_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
struct edit_baton {int wrapped_edit_baton; TYPE_1__* wrapped_editor; int anchor_abspath; int db; int * target; } ;
struct dir_baton {int wrapped_baton; int ambient_depth; scalar_t__ ambiently_excluded; } ;
typedef int apr_pool_t ;
struct TYPE_2__ {int * (* open_root ) (int ,int ,int *,int *) ;} ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int ambient_read_info (scalar_t__*,scalar_t__*,int *,int ,int ,int *) ;
 int make_dir_baton (struct dir_baton**,int *,struct edit_baton*,int *,int ,int *) ;
 int * stub1 (int ,int ,int *,int *) ;
 scalar_t__ svn_node_unknown ;
 scalar_t__ svn_wc__db_status_excluded ;
 scalar_t__ svn_wc__db_status_not_present ;
 scalar_t__ svn_wc__db_status_server_excluded ;

__attribute__((used)) static svn_error_t *
open_root(void *edit_baton,
          svn_revnum_t base_revision,
          apr_pool_t *pool,
          void **root_baton)
{
  struct edit_baton *eb = edit_baton;
  struct dir_baton *b;

  SVN_ERR(make_dir_baton(&b, ((void*)0), eb, ((void*)0), FALSE, pool));
  *root_baton = b;

  if (b->ambiently_excluded)
    return SVN_NO_ERROR;

  if (! *eb->target)
    {

      svn_node_kind_t kind;
      svn_wc__db_status_t status;
      svn_depth_t depth;


      SVN_ERR(ambient_read_info(&status, &kind, &depth,
                                eb->db, eb->anchor_abspath,
                                pool));

      if (kind != svn_node_unknown
          && status != svn_wc__db_status_not_present
          && status != svn_wc__db_status_excluded
          && status != svn_wc__db_status_server_excluded)
        {
          b->ambient_depth = depth;
        }
    }

  return eb->wrapped_editor->open_root(eb->wrapped_edit_baton, base_revision,
                                       pool, &b->wrapped_baton);
}
