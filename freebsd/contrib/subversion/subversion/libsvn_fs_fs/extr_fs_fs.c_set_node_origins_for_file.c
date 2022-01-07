
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_stream_t ;
struct TYPE_13__ {int path; } ;
typedef TYPE_2__ svn_fs_t ;
struct TYPE_14__ {int number; } ;
typedef TYPE_3__ svn_fs_fs__id_part_t ;
typedef int svn_error_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int FALSE ;
 int PATH_NODE_ORIGINS_DIR ;
 int SVN_ERR (int ) ;
 int SVN_ERR_FS_CORRUPT ;
 int SVN_HASH_TERMINATOR ;
 int SVN_INT64_BUFFER_SIZE ;
 int _ (char*) ;
 TYPE_1__* apr_hash_get (int *,char*,int ) ;
 int * apr_hash_make (int *) ;
 int apr_hash_set (int *,char*,int ,TYPE_1__*) ;
 int get_node_origins_from_file (TYPE_2__*,int **,char const*,int *) ;
 int svn__ui64tobase36 (char*,int ) ;
 int svn_dirent_dirname (char const*,int *) ;
 int svn_dirent_join (int ,int ,int *) ;
 int * svn_error_createf (int ,int *,int ,char*,int ,int ) ;
 int svn_fs_fs__ensure_dir_exists (int ,int ,int *) ;
 int svn_hash_write2 (int *,int *,int ,int *) ;
 int svn_io_file_del_none ;
 int * svn_io_file_rename2 (char const*,char const*,int ,int *) ;
 int svn_stream_close (int *) ;
 int svn_stream_open_unique (int **,char const**,int ,int ,int *,int *) ;
 int svn_string_compare (TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static svn_error_t *
set_node_origins_for_file(svn_fs_t *fs,
                          const char *node_origins_path,
                          const svn_fs_fs__id_part_t *node_id,
                          svn_string_t *node_rev_id,
                          apr_pool_t *pool)
{
  const char *path_tmp;
  svn_stream_t *stream;
  apr_hash_t *origins_hash;
  svn_string_t *old_node_rev_id;


  char node_id_ptr[SVN_INT64_BUFFER_SIZE];
  apr_size_t len = svn__ui64tobase36(node_id_ptr, node_id->number);

  SVN_ERR(svn_fs_fs__ensure_dir_exists(svn_dirent_join(fs->path,
                                                       PATH_NODE_ORIGINS_DIR,
                                                       pool),
                                       fs->path, pool));



  SVN_ERR(get_node_origins_from_file(fs, &origins_hash,
                                     node_origins_path, pool));
  if (! origins_hash)
    origins_hash = apr_hash_make(pool);

  old_node_rev_id = apr_hash_get(origins_hash, node_id_ptr, len);

  if (old_node_rev_id && !svn_string_compare(node_rev_id, old_node_rev_id))
    return svn_error_createf(SVN_ERR_FS_CORRUPT, ((void*)0),
                             _("Node origin for '%s' exists with a different "
                               "value (%s) than what we were about to store "
                               "(%s)"),
                             node_id_ptr, old_node_rev_id->data,
                             node_rev_id->data);

  apr_hash_set(origins_hash, node_id_ptr, len, node_rev_id);
  SVN_ERR(svn_stream_open_unique(&stream, &path_tmp,
                                 svn_dirent_dirname(node_origins_path, pool),
                                 svn_io_file_del_none, pool, pool));
  SVN_ERR(svn_hash_write2(origins_hash, stream, SVN_HASH_TERMINATOR, pool));
  SVN_ERR(svn_stream_close(stream));


  return svn_io_file_rename2(path_tmp, node_origins_path, FALSE, pool);
}
