
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_uint64_t ;
typedef int apr_uint32_t ;
typedef int apr_size_t ;


 int COPY_TWO_BYTES (char*,int ) ;
 int SVN_INT64_BUFFER_SIZE ;
 int * decimal_table ;
 int memcpy (char*,char*,int) ;

apr_size_t
svn__ui64toa(char * dest, apr_uint64_t number)
{
  char buffer[SVN_INT64_BUFFER_SIZE];
  apr_uint32_t reduced;
  char* target;




  if (number < 100)
    {
      if (number < 10)
        {
          dest[0] = (char)('0' + number);
          dest[1] = 0;
          return 1;
        }
      else
        {
          COPY_TWO_BYTES(dest, decimal_table[(apr_size_t)number]);
          dest[2] = 0;
          return 2;
        }
    }


  buffer[SVN_INT64_BUFFER_SIZE - 1] = 0;
  target = &buffer[SVN_INT64_BUFFER_SIZE - 3];


  while (number >= 100000000)
    {



      reduced = (apr_uint32_t)(number % 100000000);
      number /= 100000000;

      COPY_TWO_BYTES(target - 0, decimal_table[reduced % 100]);
      reduced /= 100;
      COPY_TWO_BYTES(target - 2, decimal_table[reduced % 100]);
      reduced /= 100;
      COPY_TWO_BYTES(target - 4, decimal_table[reduced % 100]);
      reduced /= 100;
      COPY_TWO_BYTES(target - 6, decimal_table[reduced % 100]);
      target -= 8;
    }


  reduced = (apr_uint32_t)(number);
  while (reduced >= 100)
    {
      COPY_TWO_BYTES(target, decimal_table[reduced % 100]);
      reduced /= 100;
      target -= 2;
    }


  COPY_TWO_BYTES(target, decimal_table[reduced]);


  if (reduced < 10)
    ++target;


  memcpy(dest, target, &buffer[SVN_INT64_BUFFER_SIZE] - target);
  return &buffer[SVN_INT64_BUFFER_SIZE] - target - 1;
}
