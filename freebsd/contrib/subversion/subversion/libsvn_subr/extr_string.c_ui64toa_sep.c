
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_uint64_t ;
typedef int apr_size_t ;


 int memmove (char*,char*,int) ;
 int svn__ui64toa (char*,int ) ;

__attribute__((used)) static void
ui64toa_sep(apr_uint64_t number, char separator, char *buffer)
{
  apr_size_t length = svn__ui64toa(buffer, number);
  apr_size_t i;

  for (i = length; i > 3; i -= 3)
    {
      memmove(&buffer[i - 2], &buffer[i - 3], length - i + 3);
      buffer[i-3] = separator;
      length++;
    }

  buffer[length] = 0;
}
