
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef int svn_checksum_t ;
typedef int svn_boolean_t ;
struct context {TYPE_1__* editor; int target_root; int authz_read_baton; int (* authz_read_func ) (int *,int ,char const*,int ,int *) ;} ;
typedef int apr_pool_t ;
struct TYPE_2__ {int * (* close_file ) (void*,int ,int *) ;int (* add_file ) (char const*,void*,int *,int ,int *,void**) ;int * (* close_directory ) (void*,int *) ;int (* add_directory ) (char const*,void*,int *,int ,int *,void**) ;} ;


 int MAYBE_DEMOTE_DEPTH (int ) ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int SVN_INVALID_REVNUM ;
 int TRUE ;
 int * absent_file_or_dir (struct context*,void*,char const*,scalar_t__,int *) ;
 int delta_dirs (struct context*,void*,int ,int *,char const*,char const*,int *) ;
 int delta_files (struct context*,void*,int *,char const*,int *) ;
 int stub1 (int *,int ,char const*,int ,int *) ;
 int stub2 (char const*,void*,int *,int ,int *,void**) ;
 int * stub3 (void*,int *) ;
 int stub4 (char const*,void*,int *,int ,int *,void**) ;
 int * stub5 (void*,int ,int *) ;
 int svn_checksum_md5 ;
 int svn_checksum_to_cstring (int *,int *) ;
 int svn_fs_file_checksum (int **,int ,int ,char const*,int ,int *) ;
 scalar_t__ svn_node_dir ;

__attribute__((used)) static svn_error_t *
add_file_or_dir(struct context *c, void *dir_baton,
                svn_depth_t depth,
                const char *target_path,
                const char *edit_path,
                svn_node_kind_t tgt_kind,
                apr_pool_t *pool)
{
  struct context *context = c;
  svn_boolean_t allowed;

  SVN_ERR_ASSERT(target_path && edit_path);

  if (c->authz_read_func)
    {
      SVN_ERR(c->authz_read_func(&allowed, c->target_root, target_path,
                                 c->authz_read_baton, pool));
      if (!allowed)
        return absent_file_or_dir(c, dir_baton, edit_path, tgt_kind, pool);
    }

  if (tgt_kind == svn_node_dir)
    {
      void *subdir_baton;

      SVN_ERR(context->editor->add_directory(edit_path, dir_baton, ((void*)0),
                                             SVN_INVALID_REVNUM, pool,
                                             &subdir_baton));
      SVN_ERR(delta_dirs(context, subdir_baton, MAYBE_DEMOTE_DEPTH(depth),
                         ((void*)0), target_path, edit_path, pool));
      return context->editor->close_directory(subdir_baton, pool);
    }
  else
    {
      void *file_baton;
      svn_checksum_t *checksum;

      SVN_ERR(context->editor->add_file(edit_path, dir_baton,
                                        ((void*)0), SVN_INVALID_REVNUM, pool,
                                        &file_baton));
      SVN_ERR(delta_files(context, file_baton, ((void*)0), target_path, pool));
      SVN_ERR(svn_fs_file_checksum(&checksum, svn_checksum_md5,
                                   context->target_root, target_path,
                                   TRUE, pool));
      return context->editor->close_file
             (file_baton, svn_checksum_to_cstring(checksum, pool), pool);
    }
}
