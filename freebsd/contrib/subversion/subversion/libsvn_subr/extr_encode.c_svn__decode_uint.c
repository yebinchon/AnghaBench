
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_uint64_t ;


 int SVN__MAX_ENCODED_UINT_LEN ;
 scalar_t__ SVN__PREDICT_TRUE (int) ;

const unsigned char *
svn__decode_uint(apr_uint64_t *val,
                 const unsigned char *p,
                 const unsigned char *end)
{
  apr_uint64_t temp = 0;

  if (end - p > SVN__MAX_ENCODED_UINT_LEN)
    end = p + SVN__MAX_ENCODED_UINT_LEN;


  while (SVN__PREDICT_TRUE(p < end))
    {
      unsigned int c = *p++;

      if (c < 0x80)
        {
          *val = (temp << 7) | c;
          return p;
        }
      else
        {
          temp = (temp << 7) | (c & 0x7f);
        }
    }

  return ((void*)0);
}
