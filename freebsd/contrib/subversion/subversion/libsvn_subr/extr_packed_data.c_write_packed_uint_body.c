
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_uint64_t ;



__attribute__((used)) static unsigned char *
write_packed_uint_body(unsigned char *buffer, apr_uint64_t value)
{
  while (value >= 0x80)
    {
      *(buffer++) = (unsigned char)((value % 0x80) + 0x80);
      value /= 0x80;
    }

  *(buffer++) = (unsigned char)value;
  return buffer;
}
