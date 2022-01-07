
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_error_t ;
typedef int apr_uint64_t ;
typedef int apr_size_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_CORRUPT_PACKED_DATA ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int * svn_error_create (int ,int *,int ) ;
 int svn_stream_read_full (int *,char*,int*) ;

__attribute__((used)) static svn_error_t *
read_stream_uint(svn_stream_t *stream, apr_uint64_t *result)
{
  apr_uint64_t shift = 0;
  apr_uint64_t value = 0;
  unsigned char c;

  do
    {
      apr_size_t len = 1;
      SVN_ERR(svn_stream_read_full(stream, (char *)&c, &len));
      if (len != 1)
        return svn_error_create(SVN_ERR_CORRUPT_PACKED_DATA, ((void*)0),
                                _("Unexpected end of stream"));

      value += (apr_uint64_t)(c & 0x7f) << shift;
      shift += 7;
      if (shift > 64)
        return svn_error_create(SVN_ERR_CORRUPT_PACKED_DATA, ((void*)0),
                                _("Integer representation too long"));
    }
  while (c >= 0x80);

  *result = value;
  return SVN_NO_ERROR;
}
