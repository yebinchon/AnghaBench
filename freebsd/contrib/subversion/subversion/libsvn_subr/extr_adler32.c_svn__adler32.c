
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uInt ;
typedef int apr_uint32_t ;
typedef int apr_off_t ;
typedef int Bytef ;


 int ADLER_MOD_BASE ;
 int adler32 (int,int const*,int ) ;

apr_uint32_t
svn__adler32(apr_uint32_t checksum, const char *data, apr_off_t len)
{







  if (len >= 80)
    {




      return (apr_uint32_t)adler32(checksum,
                                   (const Bytef *)data,
                                   (uInt)len);
    }
  else
    {
      const unsigned char *input = (const unsigned char *)data;
      apr_uint32_t s1 = checksum & 0xFFFF;
      apr_uint32_t s2 = checksum >> 16;
      apr_uint32_t b;




      for (; len >= 8; len -= 8, input += 8)
        {
          s1 += input[0]; s2 += s1;
          s1 += input[1]; s2 += s1;
          s1 += input[2]; s2 += s1;
          s1 += input[3]; s2 += s1;
          s1 += input[4]; s2 += s1;
          s1 += input[5]; s2 += s1;
          s1 += input[6]; s2 += s1;
          s1 += input[7]; s2 += s1;
        }



      while (len--)
        {
          b = *input++;
          s1 += b;
          s2 += s1;
        }

      return ((s2 % ADLER_MOD_BASE) << 16) | (s1 % ADLER_MOD_BASE);
    }
}
