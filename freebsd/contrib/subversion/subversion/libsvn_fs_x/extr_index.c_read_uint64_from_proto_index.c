
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int buffer ;
typedef int apr_uint64_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;
typedef int apr_byte_t ;


 int CHAR_BIT ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 int svn_io_file_read_full2 (int *,int*,int,int*,scalar_t__*,int *) ;

__attribute__((used)) static svn_error_t *
read_uint64_from_proto_index(apr_file_t *proto_index,
                             apr_uint64_t *value_p,
                             svn_boolean_t *eof,
                             apr_pool_t *scratch_pool)
{
  apr_byte_t buffer[sizeof(*value_p)];
  apr_size_t bytes_read;



  SVN_ERR(svn_io_file_read_full2(proto_index, buffer, sizeof(buffer),
                                 &bytes_read, eof, scratch_pool));
  SVN_ERR_ASSERT((eof && *eof) || bytes_read == sizeof(buffer));


  if (!eof || !*eof)
    {
      int i;
      apr_uint64_t value;



      value = 0;
      for (i = sizeof(buffer) - 1; i >= 0; --i)
        value = (value << CHAR_BIT) + buffer[i];

      *value_p = value;
    }

  return SVN_NO_ERROR;
}
