
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef scalar_t__ svn_revnum_t ;
typedef scalar_t__ svn_node_kind_t ;
struct TYPE_22__ {int token; } ;
typedef TYPE_3__ svn_lock_t ;
typedef int svn_fs_root_t ;
struct TYPE_23__ {scalar_t__ kind; int id; } ;
typedef TYPE_4__ svn_fs_dirent_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_depth_t ;
typedef int svn_checksum_t ;
typedef int svn_boolean_t ;
struct TYPE_24__ {TYPE_2__* editor; int * t_root; scalar_t__ t_rev; scalar_t__ ignore_ancestry; TYPE_1__* repos; int is_switch; } ;
typedef TYPE_5__ report_baton_t ;
struct TYPE_25__ {char* link_path; int start_empty; int * lock_token; scalar_t__ rev; } ;
typedef TYPE_6__ path_info_t ;
typedef int apr_pool_t ;
struct TYPE_21__ {int (* close_file ) (void*,char const*,int *) ;int (* open_file ) (char const*,void*,scalar_t__,int *,void**) ;int (* close_directory ) (void*,int *) ;int (* add_directory ) (char const*,void*,int *,scalar_t__,int *,void**) ;int (* open_directory ) (char const*,void*,scalar_t__,int *,void**) ;int (* absent_file ) (char const*,void*,int *) ;int (* absent_directory ) (char const*,void*,int *) ;int (* delete_entry ) (char const*,scalar_t__,void*,int *) ;} ;
struct TYPE_20__ {int fs; } ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_FS_NOT_FOUND ;
 scalar_t__ SVN_INVALID_REVNUM ;
 int SVN_IS_VALID_REVNUM (scalar_t__) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 int add_file_smartly (TYPE_5__*,char const*,void*,char const*,void**,char const**,scalar_t__*,int *) ;
 int any_path_info (TYPE_5__*,char const*) ;
 int check_auth (TYPE_5__*,int*,char const*,int *) ;
 int delta_dirs (TYPE_5__*,scalar_t__,char const*,char const*,void*,char const*,int,scalar_t__,scalar_t__,int *) ;
 int delta_files (TYPE_5__*,void*,scalar_t__,char const*,char const*,int *,int *) ;
 int fake_dirent (TYPE_4__ const**,int *,char const*,int *) ;
 int get_source_root (TYPE_5__*,int **,scalar_t__) ;
 int skip_path_info (TYPE_5__*,char const*) ;
 scalar_t__ strcmp (int ,int *) ;
 int stub1 (char const*,scalar_t__,void*,int *) ;
 int stub2 (char const*,void*,int *) ;
 int stub3 (char const*,void*,int *) ;
 int stub4 (char const*,void*,scalar_t__,int *,void**) ;
 int stub5 (char const*,void*,int *,scalar_t__,int *,void**) ;
 int stub6 (void*,int *) ;
 int stub7 (char const*,void*,scalar_t__,int *,void**) ;
 int stub8 (void*,char const*,int *) ;
 int svn_checksum_md5 ;
 char* svn_checksum_to_cstring (int *,int *) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 int * svn_error_trace (int ) ;
 int svn_fs_check_path (scalar_t__*,int *,char const*,int *) ;
 int svn_fs_compare_ids (int ,int ) ;
 int svn_fs_contents_changed (int*,int *,char const*,int *,char const*,int *) ;
 int svn_fs_file_checksum (int **,int ,int *,char const*,int,int *) ;
 int svn_fs_get_lock (TYPE_3__**,int ,char const*,int *) ;
 int svn_fs_props_changed (int*,int *,char const*,int *,char const*,int *) ;
 int svn_fs_root_fs (int *) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_file ;
 scalar_t__ svn_node_none ;
 int svn_repos_deleted_rev (int ,char const*,scalar_t__,scalar_t__,scalar_t__*,int *) ;

__attribute__((used)) static svn_error_t *
update_entry(report_baton_t *b, svn_revnum_t s_rev, const char *s_path,
             const svn_fs_dirent_t *s_entry, const char *t_path,
             const svn_fs_dirent_t *t_entry, void *dir_baton,
             const char *e_path, path_info_t *info, svn_depth_t wc_depth,
             svn_depth_t requested_depth, apr_pool_t *pool)
{
  svn_fs_root_t *s_root = ((void*)0);
  svn_boolean_t allowed, related;
  void *new_baton;
  svn_checksum_t *checksum;
  const char *hex_digest;


  if (info && info->link_path && !b->is_switch)
    {
      t_path = info->link_path;
      SVN_ERR(fake_dirent(&t_entry, b->t_root, t_path, pool));
    }

  if (info && !SVN_IS_VALID_REVNUM(info->rev))
    {

      s_path = ((void*)0);
      s_entry = ((void*)0);
    }
  else if (info && s_path)
    {

      s_path = (info->link_path) ? info->link_path : s_path;
      s_rev = info->rev;
      SVN_ERR(get_source_root(b, &s_root, s_rev));
      SVN_ERR(fake_dirent(&s_entry, s_root, s_path, pool));
    }


  if (s_path && !s_entry)
    return svn_error_createf(SVN_ERR_FS_NOT_FOUND, ((void*)0),
                             _("Working copy path '%s' does not exist in "
                               "repository"), e_path);






  related = FALSE;
  if (s_entry && t_entry && s_entry->kind == t_entry->kind)
    {
      int distance = svn_fs_compare_ids(s_entry->id, t_entry->id);
      svn_boolean_t changed = TRUE;





      if (!b->ignore_ancestry && t_entry->kind == svn_node_file &&
          distance == 1)
        {
          if (s_root == ((void*)0))
            SVN_ERR(get_source_root(b, &s_root, s_rev));

          SVN_ERR(svn_fs_props_changed(&changed, s_root, s_path,
                                       b->t_root, t_path, pool));
          if (!changed)
            SVN_ERR(svn_fs_contents_changed(&changed, s_root, s_path,
                                            b->t_root, t_path, pool));
        }

      if ((distance == 0 || !changed) && !any_path_info(b, e_path)
          && (requested_depth <= wc_depth || t_entry->kind == svn_node_file))
        {
          if (!info)
            return SVN_NO_ERROR;

          if (!info->start_empty)
            {
              svn_lock_t *lock;

              if (!info->lock_token)
                return SVN_NO_ERROR;

              SVN_ERR(svn_fs_get_lock(&lock, b->repos->fs, t_path, pool));
              if (lock && (strcmp(lock->token, info->lock_token) == 0))
                return SVN_NO_ERROR;
            }
        }

      related = (distance != -1 || b->ignore_ancestry);
    }


  if (s_entry && !related)
    {
      svn_revnum_t deleted_rev;

      SVN_ERR(svn_repos_deleted_rev(svn_fs_root_fs(b->t_root), t_path,
                                    s_rev, b->t_rev, &deleted_rev,
                                    pool));

      if (!SVN_IS_VALID_REVNUM(deleted_rev))
        {





          svn_node_kind_t kind;

          SVN_ERR(svn_fs_check_path(&kind, b->t_root, t_path, pool));
          if (kind != svn_node_none)
            deleted_rev = b->t_rev - 1;
        }

      SVN_ERR(b->editor->delete_entry(e_path, deleted_rev, dir_baton,
                                      pool));
      s_path = ((void*)0);
    }


  if (!t_entry)
    return svn_error_trace(skip_path_info(b, e_path));


  SVN_ERR(check_auth(b, &allowed, t_path, pool));
  if (!allowed)
    {
      if (t_entry->kind == svn_node_dir)
        SVN_ERR(b->editor->absent_directory(e_path, dir_baton, pool));
      else
        SVN_ERR(b->editor->absent_file(e_path, dir_baton, pool));
      return svn_error_trace(skip_path_info(b, e_path));
    }

  if (t_entry->kind == svn_node_dir)
    {
      if (related)
        SVN_ERR(b->editor->open_directory(e_path, dir_baton, s_rev, pool,
                                          &new_baton));
      else
        SVN_ERR(b->editor->add_directory(e_path, dir_baton, ((void*)0),
                                         SVN_INVALID_REVNUM, pool,
                                         &new_baton));

      SVN_ERR(delta_dirs(b, s_rev, s_path, t_path, new_baton, e_path,
                         info ? info->start_empty : FALSE,
                         wc_depth, requested_depth, pool));
      return svn_error_trace(b->editor->close_directory(new_baton, pool));
    }
  else
    {
      if (related)
        {
          SVN_ERR(b->editor->open_file(e_path, dir_baton, s_rev, pool,
                                       &new_baton));
          SVN_ERR(delta_files(b, new_baton, s_rev, s_path, t_path,
                              info ? info->lock_token : ((void*)0), pool));
        }
      else
        {
          svn_revnum_t copyfrom_rev = SVN_INVALID_REVNUM;
          const char *copyfrom_path = ((void*)0);
          SVN_ERR(add_file_smartly(b, e_path, dir_baton, t_path, &new_baton,
                                   &copyfrom_path, &copyfrom_rev, pool));
          if (! copyfrom_path)


            SVN_ERR(delta_files(b, new_baton, s_rev, s_path, t_path,
                                info ? info->lock_token : ((void*)0), pool));
          else


            SVN_ERR(delta_files(b, new_baton, copyfrom_rev, copyfrom_path,
                                t_path, info ? info->lock_token : ((void*)0), pool));
        }

      SVN_ERR(svn_fs_file_checksum(&checksum, svn_checksum_md5, b->t_root,
                                   t_path, TRUE, pool));
      hex_digest = svn_checksum_to_cstring(checksum, pool);
      return svn_error_trace(b->editor->close_file(new_baton, hex_digest,
                                                   pool));
    }
}
