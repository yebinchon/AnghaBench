
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ value ;
typedef int apr_uint64_t ;
typedef int apr_size_t ;


 int SVN_INT64_BUFFER_SIZE ;

apr_size_t
svn__ui64tobase36(char *dest, apr_uint64_t value)
{
  char *dest_start = dest;
  if (value < 10)
    {

      *(dest++) = (char)(value) + '0';
    }
  else
    {
      char buffer[SVN_INT64_BUFFER_SIZE];
      char *p = buffer;


      while (value > 0)
        {
          char c = (char)(value % 36);
          value /= 36;

          *p = (c <= 9) ? (c + '0') : (c - 10 + 'a');
          ++p;
        }


      while (p > buffer)
        *(dest++) = *(--p);
    }

  *dest = '\0';
  return dest - dest_start;
}
