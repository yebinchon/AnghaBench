
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_checksum_t ;
typedef int svn_checksum_ctx_t ;
typedef int (* svn_cancel_func_t ) (void*) ;
typedef int buffer ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
typedef int apr_off_t ;
typedef int apr_file_t ;


 int APR_SET ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN__STREAM_CHUNK_SIZE ;
 int _ (char*) ;
 int * svn_checksum_ctx_create (int ,int *) ;
 int svn_checksum_final (int **,int *,int *) ;
 int svn_checksum_match (int *,int *) ;
 int svn_checksum_md5 ;
 int svn_checksum_mismatch_err (int *,int *,int *,int ,char const*,char const*) ;
 int svn_checksum_update (int *,unsigned char*,int) ;
 int svn_io_file_name_get (char const**,int *,int *) ;
 int svn_io_file_read_full2 (int *,unsigned char*,int,int *,int *,int *) ;
 int svn_io_file_seek (int *,int ,int*,int *) ;

__attribute__((used)) static svn_error_t *
verify_index_checksum(apr_file_t *file,
                      const char *name,
                      apr_off_t start,
                      apr_off_t end,
                      svn_checksum_t *expected,
                      svn_cancel_func_t cancel_func,
                      void *cancel_baton,
                      apr_pool_t *scratch_pool)
{
  unsigned char buffer[SVN__STREAM_CHUNK_SIZE];
  apr_off_t size = end - start;
  svn_checksum_t *actual;
  svn_checksum_ctx_t *context
    = svn_checksum_ctx_create(svn_checksum_md5, scratch_pool);


  SVN_ERR(svn_io_file_seek(file, APR_SET, &start, scratch_pool));
  while (size > 0)
    {
      apr_size_t to_read = size > sizeof(buffer)
                         ? sizeof(buffer)
                         : (apr_size_t)size;
      SVN_ERR(svn_io_file_read_full2(file, buffer, to_read, ((void*)0), ((void*)0),
                                     scratch_pool));
      SVN_ERR(svn_checksum_update(context, buffer, to_read));
      size -= to_read;

      if (cancel_func)
        SVN_ERR(cancel_func(cancel_baton));
    }

  SVN_ERR(svn_checksum_final(&actual, context, scratch_pool));


  if (!svn_checksum_match(expected, actual))
    {
      const char *file_name;

      SVN_ERR(svn_io_file_name_get(&file_name, file, scratch_pool));
      SVN_ERR(svn_checksum_mismatch_err(expected, actual, scratch_pool,
                                        _("%s checksum mismatch in file %s"),
                                        name, file_name));
    }

  return SVN_NO_ERROR;
}
