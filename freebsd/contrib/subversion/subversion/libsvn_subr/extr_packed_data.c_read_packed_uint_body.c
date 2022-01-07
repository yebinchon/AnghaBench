
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_uint64_t ;



__attribute__((used)) static unsigned char *
read_packed_uint_body(unsigned char *p, apr_uint64_t *result)
{
  if (*p < 0x80)
    {
      *result = *p;
    }
  else
    {
      apr_uint64_t shift = 0;
      apr_uint64_t value = 0;
      while (*p >= 0x80)
        {
          value += (apr_uint64_t)(*p & 0x7f) << shift;
          ++p;

          shift += 7;
          if (shift > 64)
            {



              *result = 0;
              return p;
            }
        }

      *result = value + ((apr_uint64_t)*p << shift);
    }

  return ++p;
}
