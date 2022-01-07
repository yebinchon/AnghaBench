
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int trail_t ;
struct TYPE_11__ {int data; int len; } ;
typedef TYPE_1__ svn_stringbuf_t ;
struct TYPE_12__ {int len; int data; } ;
typedef TYPE_2__ svn_string_t ;
typedef int svn_stream_t ;
typedef int svn_skel_t ;
typedef int svn_fs_t ;
typedef int svn_fs_id_t ;
typedef int svn_error_t ;
struct TYPE_13__ {char* data_key; } ;
typedef TYPE_3__ node_revision_t ;
struct TYPE_14__ {int id; } ;
typedef TYPE_4__ dag_node_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int TRUE ;
 int * apr_hash_make (int *) ;
 int * svn_fs_base__dag_get_fs (TYPE_4__*) ;
 int svn_fs_base__get_mutable_rep (char const**,char const*,int *,char const*,int *,int *) ;
 int svn_fs_base__parse_entries_skel (int **,int *,int *) ;
 int svn_fs_base__rep_contents (TYPE_2__*,int *,char const*,int *,int *) ;
 int svn_fs_base__rep_contents_write_stream (int **,int *,char const*,char const*,int ,int *,int *) ;
 int svn_fs_base__same_keys (char const*,char const*) ;
 int svn_fs_base__unparse_entries_skel (int **,int *,int *) ;
 int svn_fs_bdb__get_node_revision (TYPE_3__**,int *,int ,int *,int *) ;
 int svn_fs_bdb__put_node_revision (int *,int ,TYPE_3__*,int *,int *) ;
 int svn_hash_sets (int *,char const*,int const*) ;
 int * svn_skel__parse (int ,int ,int *) ;
 TYPE_1__* svn_skel__unparse (int *,int *) ;
 int * svn_stream_close (int *) ;
 int svn_stream_write (int *,int ,int *) ;

__attribute__((used)) static svn_error_t *
set_entry(dag_node_t *parent,
          const char *name,
          const svn_fs_id_t *id,
          const char *txn_id,
          trail_t *trail,
          apr_pool_t *pool)
{
  node_revision_t *parent_noderev;
  const char *rep_key, *mutable_rep_key;
  apr_hash_t *entries = ((void*)0);
  svn_stream_t *wstream;
  apr_size_t len;
  svn_string_t raw_entries;
  svn_stringbuf_t *raw_entries_buf;
  svn_skel_t *entries_skel;
  svn_fs_t *fs = svn_fs_base__dag_get_fs(parent);


  SVN_ERR(svn_fs_bdb__get_node_revision(&parent_noderev, fs, parent->id,
                                        trail, pool));
  rep_key = parent_noderev->data_key;
  SVN_ERR(svn_fs_base__get_mutable_rep(&mutable_rep_key, rep_key,
                                       fs, txn_id, trail, pool));






  if (! svn_fs_base__same_keys(rep_key, mutable_rep_key))
    {
      parent_noderev->data_key = mutable_rep_key;
      SVN_ERR(svn_fs_bdb__put_node_revision(fs, parent->id, parent_noderev,
                                            trail, pool));
    }



  if (rep_key)
    {
      SVN_ERR(svn_fs_base__rep_contents(&raw_entries, fs, rep_key,
                                        trail, pool));
      entries_skel = svn_skel__parse(raw_entries.data, raw_entries.len, pool);
      if (entries_skel)
        SVN_ERR(svn_fs_base__parse_entries_skel(&entries, entries_skel,
                                                pool));
    }


  if (! entries)
    entries = apr_hash_make(pool);


  svn_hash_sets(entries, name, id);


  SVN_ERR(svn_fs_base__unparse_entries_skel(&entries_skel, entries,
                                            pool));
  raw_entries_buf = svn_skel__unparse(entries_skel, pool);
  SVN_ERR(svn_fs_base__rep_contents_write_stream(&wstream, fs,
                                                 mutable_rep_key, txn_id,
                                                 TRUE, trail, pool));
  len = raw_entries_buf->len;
  SVN_ERR(svn_stream_write(wstream, raw_entries_buf->data, &len));
  return svn_stream_close(wstream);
}
