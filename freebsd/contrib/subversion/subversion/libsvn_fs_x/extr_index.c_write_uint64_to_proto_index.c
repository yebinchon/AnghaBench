
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
typedef int svn_error_t ;
typedef int buffer ;
typedef int apr_uint64_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;
typedef scalar_t__ apr_byte_t ;


 int CHAR_BIT ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 int svn_io_file_write_full (int *,scalar_t__*,int,int*,int *) ;

__attribute__((used)) static svn_error_t *
write_uint64_to_proto_index(apr_file_t *proto_index,
                            apr_uint64_t value,
                            apr_pool_t *scratch_pool)
{
  apr_byte_t buffer[sizeof(value)];
  int i;
  apr_size_t written;


  for (i = 0; i < sizeof(buffer); ++i)
    {

      buffer[i] = (apr_byte_t)value;
      value >>= CHAR_BIT;
    }


  SVN_ERR(svn_io_file_write_full(proto_index, buffer, sizeof(buffer),
                                 &written, scratch_pool));
  SVN_ERR_ASSERT(written == sizeof(buffer));

  return SVN_NO_ERROR;
}
