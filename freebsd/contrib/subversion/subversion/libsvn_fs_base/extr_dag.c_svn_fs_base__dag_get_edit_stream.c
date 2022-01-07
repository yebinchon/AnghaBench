
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int trail_t ;
typedef int svn_stream_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_7__ {char const* edit_key; } ;
typedef TYPE_1__ node_revision_t ;
struct TYPE_8__ {scalar_t__ kind; int id; int * fs; } ;
typedef TYPE_2__ dag_node_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_FS_NOT_FILE ;
 int SVN_ERR_FS_NOT_MUTABLE ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int * svn_error_createf (int ,int *,int ) ;
 int svn_fs_base__dag_check_mutable (TYPE_2__*,char const*) ;
 int svn_fs_base__delete_rep_if_mutable (int *,char const*,char const*,int *,int *) ;
 int svn_fs_base__get_mutable_rep (char const**,int *,int *,char const*,int *,int *) ;
 int svn_fs_base__rep_contents_write_stream (int **,int *,char const*,char const*,int ,int *,int *) ;
 int svn_fs_bdb__get_node_revision (TYPE_1__**,int *,int ,int *,int *) ;
 int svn_fs_bdb__put_node_revision (int *,int ,TYPE_1__*,int *,int *) ;
 scalar_t__ svn_node_file ;

svn_error_t *
svn_fs_base__dag_get_edit_stream(svn_stream_t **contents,
                                 dag_node_t *file,
                                 const char *txn_id,
                                 trail_t *trail,
                                 apr_pool_t *pool)
{
  svn_fs_t *fs = file->fs;
  node_revision_t *noderev;
  const char *mutable_rep_key;
  svn_stream_t *ws;


  if (file->kind != svn_node_file)
    return svn_error_createf
      (SVN_ERR_FS_NOT_FILE, ((void*)0),
       _("Attempted to set textual contents of a *non*-file node"));


  if (! svn_fs_base__dag_check_mutable(file, txn_id))
    return svn_error_createf
      (SVN_ERR_FS_NOT_MUTABLE, ((void*)0),
       _("Attempted to set textual contents of an immutable node"));


  SVN_ERR(svn_fs_bdb__get_node_revision(&noderev, fs, file->id,
                                        trail, pool));



  if (noderev->edit_key)
    SVN_ERR(svn_fs_base__delete_rep_if_mutable(fs, noderev->edit_key,
                                               txn_id, trail, pool));



  SVN_ERR(svn_fs_base__get_mutable_rep(&mutable_rep_key, ((void*)0), fs,
                                       txn_id, trail, pool));


  noderev->edit_key = mutable_rep_key;
  SVN_ERR(svn_fs_bdb__put_node_revision(fs, file->id, noderev,
                                        trail, pool));


  SVN_ERR(svn_fs_base__rep_contents_write_stream(&ws, fs, mutable_rep_key,
                                                 txn_id, FALSE, trail,
                                                 pool));
  *contents = ws;

  return SVN_NO_ERROR;
}
