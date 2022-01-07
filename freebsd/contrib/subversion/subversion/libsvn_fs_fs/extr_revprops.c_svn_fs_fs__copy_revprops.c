
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int len; int data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_stream_t ;
typedef scalar_t__ svn_revnum_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;
struct TYPE_10__ {int nelts; } ;
typedef TYPE_2__ apr_array_header_t ;


 int APR_CREATE ;
 int APR_OS_DEFAULT ;
 int APR_READ ;
 int APR_WRITE ;
 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 char const* apr_psprintf (int *,char*,scalar_t__) ;
 int serialize_revprops_header (int *,scalar_t__,TYPE_2__*,int ,int ,int *) ;
 int svn__compress_zlib (int ,int ,TYPE_1__*,int) ;
 char const* svn_dirent_join (char const*,char const*,int *) ;
 int svn_io_file_close (int *,int *) ;
 int svn_io_file_flush_to_disk (int *,int *) ;
 int svn_io_file_open (int **,char const*,int,int ,int *) ;
 int svn_io_file_write_full (int *,int ,int ,int *,int *) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_stream_close (int *) ;
 int svn_stream_copy3 (int *,int *,int ,void*,int *) ;
 int * svn_stream_from_aprfile2 (int *,int ,int *) ;
 int * svn_stream_from_stringbuf (TYPE_1__*,int *) ;
 TYPE_1__* svn_stringbuf_create_empty (int *) ;
 TYPE_1__* svn_stringbuf_create_ensure (int ,int *) ;

svn_error_t *
svn_fs_fs__copy_revprops(const char *pack_file_dir,
                         const char *pack_filename,
                         const char *shard_path,
                         svn_revnum_t start_rev,
                         svn_revnum_t end_rev,
                         apr_array_header_t *sizes,
                         apr_size_t total_size,
                         int compression_level,
                         svn_boolean_t flush_to_disk,
                         svn_cancel_func_t cancel_func,
                         void *cancel_baton,
                         apr_pool_t *scratch_pool)
{
  svn_stream_t *pack_stream;
  apr_file_t *pack_file;
  svn_revnum_t rev;
  apr_pool_t *iterpool = svn_pool_create(scratch_pool);


  svn_stringbuf_t *uncompressed
    = svn_stringbuf_create_ensure(total_size, scratch_pool);
  svn_stringbuf_t *compressed
    = svn_stringbuf_create_empty(scratch_pool);
  pack_stream = svn_stream_from_stringbuf(uncompressed, scratch_pool);


  SVN_ERR(serialize_revprops_header(pack_stream, start_rev, sizes, 0,
                                    sizes->nelts, iterpool));


  SVN_ERR(svn_io_file_open(&pack_file, svn_dirent_join(pack_file_dir,
                                                       pack_filename,
                                                       scratch_pool),
                           APR_WRITE | APR_CREATE, APR_OS_DEFAULT,
                           scratch_pool));


  for (rev = start_rev; rev <= end_rev; rev++)
    {
      const char *path;
      svn_stream_t *stream;
      apr_file_t *file;

      svn_pool_clear(iterpool);


      path = svn_dirent_join(shard_path, apr_psprintf(iterpool, "%ld", rev),
                             iterpool);




      SVN_ERR(svn_io_file_open(&file, path, APR_READ, APR_OS_DEFAULT,
                               iterpool));
      stream = svn_stream_from_aprfile2(file, FALSE, iterpool);
      SVN_ERR(svn_stream_copy3(stream, pack_stream,
                               cancel_func, cancel_baton, iterpool));
    }


  SVN_ERR(svn_stream_close(pack_stream));


  SVN_ERR(svn__compress_zlib(uncompressed->data, uncompressed->len,
                             compressed, compression_level));


  SVN_ERR(svn_io_file_write_full(pack_file, compressed->data, compressed->len,
                                 ((void*)0), scratch_pool));
  if (flush_to_disk)
    SVN_ERR(svn_io_file_flush_to_disk(pack_file, scratch_pool));
  SVN_ERR(svn_io_file_close(pack_file, scratch_pool));

  svn_pool_destroy(iterpool);

  return SVN_NO_ERROR;
}
