
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_int64_t ;



__attribute__((used)) static char*
encode_number(apr_int64_t number, char *key_buffer)
{

  if (number < 0)
  {
    number = -number;
    *key_buffer = (char)((number & 63) + ' ' + 65);
  }
  else
    *key_buffer = (char)((number & 63) + ' ' + 1);
  number /= 64;


  while (number)
  {
    *++key_buffer = (char)((number & 127) + ' ' + 1);
    number /= 128;
  }


  return key_buffer;
}
