
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_uint64_t ;



unsigned char *
svn__encode_uint(unsigned char *p, apr_uint64_t val)
{
  int n;
  apr_uint64_t v;


  v = val >> 7;
  n = 1;
  while (v > 0)
    {
      v = v >> 7;
      n++;
    }



  while (--n >= 1)
    *p++ = (unsigned char)(((val >> (n * 7)) | 0x80) & 0xff);

  *p++ = (unsigned char)(val & 0x7f);

  return p;
}
