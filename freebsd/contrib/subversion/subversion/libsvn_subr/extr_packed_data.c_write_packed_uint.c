
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stringbuf_t ;
typedef int apr_uint64_t ;


 int svn_stringbuf_appendbyte (int *,char) ;
 int svn_stringbuf_appendbytes (int *,char*,int) ;
 unsigned char* write_packed_uint_body (unsigned char*,int) ;

__attribute__((used)) static void
write_packed_uint(svn_stringbuf_t* packed, apr_uint64_t value)
{
  if (value < 0x80)
    {
      svn_stringbuf_appendbyte(packed, (char)value);
    }
  else
    {
      unsigned char buffer[10];
      unsigned char *p = write_packed_uint_body(buffer, value);

      svn_stringbuf_appendbytes(packed, (char *)buffer, p - buffer);
    }
}
