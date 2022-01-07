
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_error_t ;
typedef int apr_uint64_t ;
typedef int apr_size_t ;


 int ENCODED_INT_LENGTH ;
 int encode_uint (unsigned char*,int ) ;
 int * svn_error_trace (int ) ;
 int svn_stream_write (int *,char*,int *) ;

__attribute__((used)) static svn_error_t *
stream_write_encoded(svn_stream_t *stream,
                     apr_uint64_t value)
{
  unsigned char encoded[ENCODED_INT_LENGTH];

  apr_size_t len = encode_uint(encoded, value);
  return svn_error_trace(svn_stream_write(stream, (char *)encoded, &len));
}
