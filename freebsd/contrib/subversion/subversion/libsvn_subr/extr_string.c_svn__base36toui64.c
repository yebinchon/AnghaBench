
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int digits ;
typedef int apr_uint64_t ;


 int SVN_INT64_BUFFER_SIZE ;

apr_uint64_t
svn__base36toui64(const char **next, const char *source)
{
  apr_uint64_t result = 0;
  apr_uint64_t factor = 1;
  int i = 0;
  char digits[SVN_INT64_BUFFER_SIZE];



  while (i < sizeof(digits))
    {
      char c = *source;
      if (c < 'a')
        {

          if (c < '0' || c > '9')
            break;

          c -= '0';
        }
      else
        {
          if (c < 'a' || c > 'z')
            break;

          c -= 'a' - 10;
        }

      digits[i++] = c;
      source++;
    }


  while (i > 0)
    {
      result += factor * (apr_uint64_t)digits[--i];
      factor *= 36;
    }

  if (next)
    *next = source;

  return result;
}
