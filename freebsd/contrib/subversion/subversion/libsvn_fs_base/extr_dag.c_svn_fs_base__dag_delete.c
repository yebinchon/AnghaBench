
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int trail_t ;
struct TYPE_13__ {int data; int len; } ;
typedef TYPE_1__ svn_stringbuf_t ;
struct TYPE_14__ {int len; int data; } ;
typedef TYPE_2__ svn_string_t ;
typedef int svn_stream_t ;
typedef int svn_skel_t ;
typedef int svn_fs_t ;
typedef int svn_fs_id_t ;
typedef int svn_error_t ;
struct TYPE_15__ {char* data_key; } ;
typedef TYPE_3__ node_revision_t ;
struct TYPE_16__ {scalar_t__ kind; int * fs; int id; } ;
typedef TYPE_4__ dag_node_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_FS_NOT_DIRECTORY ;
 int SVN_ERR_FS_NOT_MUTABLE ;
 int SVN_ERR_FS_NOT_SINGLE_PATH_COMPONENT ;
 int SVN_ERR_FS_NO_SUCH_ENTRY ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 int svn_fs_base__dag_check_mutable (TYPE_4__*,char const*) ;
 int svn_fs_base__dag_delete_if_mutable (int *,int *,char const*,int *,int *) ;
 int svn_fs_base__dag_get_fs (TYPE_4__*) ;
 int svn_fs_base__dag_get_node (TYPE_4__**,int ,int *,int *,int *) ;
 int svn_fs_base__get_mutable_rep (char const**,char const*,int *,char const*,int *,int *) ;
 int svn_fs_base__parse_entries_skel (int **,int *,int *) ;
 int svn_fs_base__rep_contents (TYPE_2__*,int *,char const*,int *,int *) ;
 int svn_fs_base__rep_contents_write_stream (int **,int *,char const*,char const*,int ,int *,int *) ;
 int svn_fs_base__same_keys (char const*,char const*) ;
 int svn_fs_base__unparse_entries_skel (int **,int *,int *) ;
 int svn_fs_bdb__get_node_revision (TYPE_3__**,int *,int ,int *,int *) ;
 int svn_fs_bdb__put_node_revision (int *,int ,TYPE_3__*,int *,int *) ;
 int * svn_hash_gets (int *,char const*) ;
 int svn_hash_sets (int *,char const*,int *) ;
 scalar_t__ svn_node_dir ;
 int svn_path_is_single_path_component (char const*) ;
 int * svn_skel__parse (int ,int ,int *) ;
 TYPE_1__* svn_skel__unparse (int *,int *) ;
 int svn_stream_close (int *) ;
 int svn_stream_write (int *,int ,int *) ;

svn_error_t *
svn_fs_base__dag_delete(dag_node_t *parent,
                        const char *name,
                        const char *txn_id,
                        trail_t *trail,
                        apr_pool_t *pool)
{
  node_revision_t *parent_noderev;
  const char *rep_key, *mutable_rep_key;
  apr_hash_t *entries = ((void*)0);
  svn_skel_t *entries_skel;
  svn_fs_t *fs = parent->fs;
  svn_string_t str;
  svn_fs_id_t *id = ((void*)0);
  dag_node_t *node;


  if (parent->kind != svn_node_dir)
    return svn_error_createf
      (SVN_ERR_FS_NOT_DIRECTORY, ((void*)0),
       _("Attempted to delete entry '%s' from *non*-directory node"), name);


  if (! svn_fs_base__dag_check_mutable(parent, txn_id))
    return svn_error_createf
      (SVN_ERR_FS_NOT_MUTABLE, ((void*)0),
       _("Attempted to delete entry '%s' from immutable directory node"),
       name);


  if (! svn_path_is_single_path_component(name))
    return svn_error_createf
      (SVN_ERR_FS_NOT_SINGLE_PATH_COMPONENT, ((void*)0),
       _("Attempted to delete a node with an illegal name '%s'"), name);


  SVN_ERR(svn_fs_bdb__get_node_revision(&parent_noderev, fs, parent->id,
                                        trail, pool));


  rep_key = parent_noderev->data_key;




  if (! rep_key)
    return svn_error_createf
      (SVN_ERR_FS_NO_SUCH_ENTRY, ((void*)0),
       _("Delete failed: directory has no entry '%s'"), name);




  SVN_ERR(svn_fs_base__get_mutable_rep(&mutable_rep_key, rep_key,
                                       fs, txn_id, trail, pool));
  if (! svn_fs_base__same_keys(mutable_rep_key, rep_key))
    {
      parent_noderev->data_key = mutable_rep_key;
      SVN_ERR(svn_fs_bdb__put_node_revision(fs, parent->id, parent_noderev,
                                            trail, pool));
    }





  SVN_ERR(svn_fs_base__rep_contents(&str, fs, rep_key, trail, pool));
  entries_skel = svn_skel__parse(str.data, str.len, pool);
  if (entries_skel)
    SVN_ERR(svn_fs_base__parse_entries_skel(&entries, entries_skel, pool));


  if (entries)
    id = svn_hash_gets(entries, name);




  if (! id)
    return svn_error_createf
      (SVN_ERR_FS_NO_SUCH_ENTRY, ((void*)0),
       _("Delete failed: directory has no entry '%s'"), name);


  SVN_ERR(svn_fs_base__dag_get_node(&node, svn_fs_base__dag_get_fs(parent),
                                    id, trail, pool));


  SVN_ERR(svn_fs_base__dag_delete_if_mutable(parent->fs, id, txn_id,
                                             trail, pool));


  svn_hash_sets(entries, name, ((void*)0));


  {
    svn_stream_t *ws;
    svn_stringbuf_t *unparsed_entries;
    apr_size_t len;

    SVN_ERR(svn_fs_base__unparse_entries_skel(&entries_skel, entries, pool));
    unparsed_entries = svn_skel__unparse(entries_skel, pool);
    SVN_ERR(svn_fs_base__rep_contents_write_stream(&ws, fs, mutable_rep_key,
                                                   txn_id, TRUE, trail,
                                                   pool));
    len = unparsed_entries->len;
    SVN_ERR(svn_stream_write(ws, unparsed_entries->data, &len));
    SVN_ERR(svn_stream_close(ws));
  }

  return SVN_NO_ERROR;
}
