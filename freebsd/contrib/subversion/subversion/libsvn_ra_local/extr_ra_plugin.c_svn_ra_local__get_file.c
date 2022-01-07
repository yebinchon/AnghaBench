
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_stream_t ;
typedef int svn_revnum_t ;
struct TYPE_8__ {TYPE_4__* priv; } ;
typedef TYPE_3__ svn_ra_session_t ;
struct TYPE_9__ {int uuid; int callback_baton; TYPE_2__* callbacks; int fs; TYPE_1__* fs_path; } ;
typedef TYPE_4__ svn_ra_local__session_baton_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_fs_root_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_7__ {int * cancel_func; } ;
struct TYPE_6__ {int data; } ;


 int SVN_ERR (int ) ;
 int SVN_ERR_FS_NOT_FILE ;
 int SVN_ERR_FS_NOT_FOUND ;
 int SVN_IS_VALID_REVNUM (int ) ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int get_node_props (int **,int *,char const*,int ,int *,int *) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 int svn_fs_check_path (scalar_t__*,int *,char const*,int *) ;
 int svn_fs_file_contents (int **,int *,char const*,int *) ;
 int svn_fs_revision_root (int **,int ,int ,int *) ;
 int svn_fs_youngest_rev (int *,int ,int *) ;
 char* svn_fspath__join (int ,char const*,int *) ;
 scalar_t__ svn_node_file ;
 scalar_t__ svn_node_none ;
 int svn_stream_copy3 (int *,int ,int *,int ,int *) ;
 int svn_stream_disown (int *,int *) ;

__attribute__((used)) static svn_error_t *
svn_ra_local__get_file(svn_ra_session_t *session,
                       const char *path,
                       svn_revnum_t revision,
                       svn_stream_t *stream,
                       svn_revnum_t *fetched_rev,
                       apr_hash_t **props,
                       apr_pool_t *pool)
{
  svn_fs_root_t *root;
  svn_stream_t *contents;
  svn_revnum_t youngest_rev;
  svn_ra_local__session_baton_t *sess = session->priv;
  const char *abs_path = svn_fspath__join(sess->fs_path->data, path, pool);
  svn_node_kind_t node_kind;


  if (! SVN_IS_VALID_REVNUM(revision))
    {
      SVN_ERR(svn_fs_youngest_rev(&youngest_rev, sess->fs, pool));
      SVN_ERR(svn_fs_revision_root(&root, sess->fs, youngest_rev, pool));
      if (fetched_rev != ((void*)0))
        *fetched_rev = youngest_rev;
    }
  else
    SVN_ERR(svn_fs_revision_root(&root, sess->fs, revision, pool));

  SVN_ERR(svn_fs_check_path(&node_kind, root, abs_path, pool));
  if (node_kind == svn_node_none)
    {
      return svn_error_createf(SVN_ERR_FS_NOT_FOUND, ((void*)0),
                               _("'%s' path not found"), abs_path);
    }
  else if (node_kind != svn_node_file)
    {
      return svn_error_createf(SVN_ERR_FS_NOT_FILE, ((void*)0),
                               _("'%s' is not a file"), abs_path);
    }

  if (stream)
    {

      SVN_ERR(svn_fs_file_contents(&contents, root, abs_path, pool));
      SVN_ERR(svn_stream_copy3(contents, svn_stream_disown(stream, pool),
                               sess->callbacks
                                 ? sess->callbacks->cancel_func : ((void*)0),
                               sess->callback_baton,
                               pool));
    }


  if (props)
    SVN_ERR(get_node_props(props, root, abs_path, sess->uuid, pool, pool));

  return SVN_NO_ERROR;
}
