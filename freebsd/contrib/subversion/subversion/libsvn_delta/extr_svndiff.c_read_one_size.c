
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_error_t ;
typedef int apr_size_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int read_one_byte (unsigned char*,int *) ;

__attribute__((used)) static svn_error_t *
read_one_size(apr_size_t *size,
              apr_size_t *byte_counter,
              svn_stream_t *stream)
{
  unsigned char c;

  *size = 0;
  while (1)
    {
      SVN_ERR(read_one_byte(&c, stream));
      ++*byte_counter;
      *size = (*size << 7) | (c & 0x7f);
      if (!(c & 0x80))
        break;
    }
  return SVN_NO_ERROR;
}
