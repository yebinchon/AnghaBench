
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; void* data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_stream_t ;
typedef int svn_error_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int SVN_HASH_TERMINATOR ;
 int * SVN_NO_ERROR ;
 int * svn_hash__make (int *) ;
 int svn_hash_read2 (int *,int *,int ,int *) ;
 int * svn_stream_from_string (TYPE_1__*,int *) ;

svn_error_t *
svn_fs_fs__deserialize_revprops(void **out,
                                void *data,
                                apr_size_t data_len,
                                apr_pool_t *pool)
{
  apr_hash_t *properties;
  svn_stream_t *stream;

  svn_string_t buffer;
  buffer.data = data;
  buffer.len = data_len;

  stream = svn_stream_from_string(&buffer, pool);
  properties = svn_hash__make(pool);

  SVN_ERR(svn_hash_read2(properties, stream, SVN_HASH_TERMINATOR, pool));


  *out = properties;

  return SVN_NO_ERROR;
}
