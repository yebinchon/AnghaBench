
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_fs_root_t ;
struct TYPE_16__ {scalar_t__ kind; } ;
typedef TYPE_2__ svn_fs_dirent_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_17__ {char* t_path; TYPE_1__* editor; int requested_depth; scalar_t__* s_operand; int edit_baton; int t_rev; int * t_root; int fs_base; } ;
typedef TYPE_3__ report_baton_t ;
struct TYPE_18__ {int depth; int start_empty; int link_path; int rev; } ;
typedef TYPE_4__ path_info_t ;
typedef int apr_pool_t ;
struct TYPE_15__ {int (* close_directory ) (void*,int *) ;int (* open_root ) (int ,int ,int *,void**) ;int (* set_target_revision ) (int ,int ,int *) ;} ;


 int SVN_ERR (int ) ;
 int SVN_ERR_AUTHZ_ROOT_UNREADABLE ;
 int SVN_ERR_FS_PATH_SYNTAX ;
 scalar_t__ SVN_IS_VALID_REVNUM (int ) ;
 int _ (char*) ;
 int check_auth (TYPE_3__*,int*,char const*,int *) ;
 int delta_dirs (TYPE_3__*,int ,char const*,char const*,void*,char*,int ,int ,int ,int *) ;
 int fake_dirent (TYPE_2__ const**,int *,char const*,int *) ;
 int get_source_root (TYPE_3__*,int **,int ) ;
 int stub1 (int ,int ,int *) ;
 int stub2 (int ,int ,int *,void**) ;
 int stub3 (void*,int *) ;
 int * svn_error_create (int ,int *,int ) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 int * svn_error_trace (int ) ;
 char* svn_fspath__dirname (char*,int *) ;
 char* svn_fspath__join (int ,scalar_t__*,int *) ;
 scalar_t__ svn_node_dir ;
 int update_entry (TYPE_3__*,int ,char const*,TYPE_2__ const*,char const*,TYPE_2__ const*,void*,scalar_t__*,TYPE_4__*,int ,int ,int *) ;

__attribute__((used)) static svn_error_t *
drive(report_baton_t *b, svn_revnum_t s_rev, path_info_t *info,
      apr_pool_t *pool)
{
  const char *t_anchor, *s_fullpath;
  svn_boolean_t allowed, info_is_set_path;
  svn_fs_root_t *s_root;
  const svn_fs_dirent_t *s_entry, *t_entry;
  void *root_baton;



  t_anchor = *b->s_operand ? svn_fspath__dirname(b->t_path, pool) : b->t_path;
  SVN_ERR(check_auth(b, &allowed, t_anchor, pool));
  if (!allowed)
    return svn_error_create
      (SVN_ERR_AUTHZ_ROOT_UNREADABLE, ((void*)0),
       _("Not authorized to open root of edit operation"));


  s_fullpath = svn_fspath__join(b->fs_base, b->s_operand, pool);
  SVN_ERR(get_source_root(b, &s_root, s_rev));
  SVN_ERR(fake_dirent(&s_entry, s_root, s_fullpath, pool));
  SVN_ERR(fake_dirent(&t_entry, b->t_root, b->t_path, pool));



  info_is_set_path = (SVN_IS_VALID_REVNUM(info->rev) && !info->link_path);
  if (info_is_set_path && !s_entry)
    s_fullpath = ((void*)0);


  if (!*b->s_operand && !(t_entry))
    return svn_error_createf(SVN_ERR_FS_PATH_SYNTAX, ((void*)0),
                             _("Target path '%s' does not exist"),
                             b->t_path);



  else if (!*b->s_operand && (!s_entry || s_entry->kind != svn_node_dir
                              || t_entry->kind != svn_node_dir))
    return svn_error_create(SVN_ERR_FS_PATH_SYNTAX, ((void*)0),
                            _("Cannot replace a directory from within"));

  SVN_ERR(b->editor->set_target_revision(b->edit_baton, b->t_rev, pool));
  SVN_ERR(b->editor->open_root(b->edit_baton, s_rev, pool, &root_baton));



  if (!*b->s_operand)
    SVN_ERR(delta_dirs(b, s_rev, s_fullpath, b->t_path, root_baton,
                       "", info->start_empty, info->depth, b->requested_depth,
                       pool));
  else
    SVN_ERR(update_entry(b, s_rev, s_fullpath, s_entry, b->t_path,
                         t_entry, root_baton, b->s_operand, info,
                         info->depth, b->requested_depth, pool));

  return svn_error_trace(b->editor->close_directory(root_baton, pool));
}
