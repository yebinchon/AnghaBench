
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int len; int data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef scalar_t__ svn_revnum_t ;
typedef int svn_packed__data_root_t ;
typedef int svn_packed__byte_stream_t ;
typedef int svn_fs_x__batch_fsync_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;
typedef int apr_array_header_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_W (int ,int ) ;
 int * SVN_NO_ERROR ;
 int apr_psprintf (int *,char*,scalar_t__) ;
 int svn_dirent_join (char const*,char const*,int *) ;
 int svn_fs_x__batch_fsync_open_file (int **,int *,int ,int *) ;
 char* svn_fs_x__path_revprops (int *,scalar_t__,int *) ;
 int svn_packed__add_bytes (int *,int ,int ) ;
 int * svn_packed__create_bytes_stream (int *) ;
 int * svn_packed__data_create_root (int *) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_stringbuf_from_file2 (TYPE_1__**,char const*,int *) ;
 int verify_checksum (TYPE_1__*,int *) ;
 int write_packed_data_checksummed (int *,int *,int *) ;

__attribute__((used)) static svn_error_t *
copy_revprops(svn_fs_t *fs,
              const char *pack_file_dir,
              const char *pack_filename,
              const char *shard_path,
              svn_revnum_t start_rev,
              svn_revnum_t end_rev,
              apr_array_header_t *sizes,
              apr_size_t total_size,
              int compression_level,
              svn_fs_x__batch_fsync_t *batch,
              svn_cancel_func_t cancel_func,
              void *cancel_baton,
              apr_pool_t *scratch_pool)
{
  apr_file_t *pack_file;
  svn_revnum_t rev;
  apr_pool_t *iterpool = svn_pool_create(scratch_pool);

  svn_packed__data_root_t *root = svn_packed__data_create_root(scratch_pool);
  svn_packed__byte_stream_t *stream
    = svn_packed__create_bytes_stream(root);


  for (rev = start_rev; rev <= end_rev; rev++)
    {
      const char *path;
      svn_stringbuf_t *props;

      svn_pool_clear(iterpool);


      path = svn_fs_x__path_revprops(fs, rev, iterpool);



      SVN_ERR(svn_stringbuf_from_file2(&props, path, iterpool));
      SVN_ERR_W(verify_checksum(props, iterpool),
                apr_psprintf(iterpool, "Failed to read revprops for r%ld.",
                             rev));

      svn_packed__add_bytes(stream, props->data, props->len);
    }


  SVN_ERR(svn_fs_x__batch_fsync_open_file(&pack_file, batch,
                                          svn_dirent_join(pack_file_dir,
                                                          pack_filename,
                                                          scratch_pool),
                                          scratch_pool));


  SVN_ERR(write_packed_data_checksummed(root, pack_file, scratch_pool));

  svn_pool_destroy(iterpool);

  return SVN_NO_ERROR;
}
