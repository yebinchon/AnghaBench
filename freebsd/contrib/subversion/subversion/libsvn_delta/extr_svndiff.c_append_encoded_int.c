
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stringbuf_t ;
typedef scalar_t__ svn_filesize_t ;
typedef int apr_uint64_t ;


 int SVN_ERR_ASSERT_NO_RETURN (int) ;
 int SVN__MAX_ENCODED_UINT_LEN ;
 unsigned char* svn__encode_uint (unsigned char*,int ) ;
 int svn_stringbuf_appendbytes (int *,char const*,int) ;

__attribute__((used)) static void
append_encoded_int(svn_stringbuf_t *header, svn_filesize_t val)
{
  unsigned char buf[SVN__MAX_ENCODED_UINT_LEN], *p;

  SVN_ERR_ASSERT_NO_RETURN(val >= 0);
  p = svn__encode_uint(buf, (apr_uint64_t)val);
  svn_stringbuf_appendbytes(header, (const char *)buf, p - buf);
}
