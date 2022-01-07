
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* cvmx_debug_hexchar ;

__attribute__((used)) static void cvmx_debug_int8_to_strhex(char *str, unsigned char t)
{
  str[0] = cvmx_debug_hexchar[(t>>4)&0xf];
  str[1] = cvmx_debug_hexchar[t&0xF];
  str[2] = 0;
}
