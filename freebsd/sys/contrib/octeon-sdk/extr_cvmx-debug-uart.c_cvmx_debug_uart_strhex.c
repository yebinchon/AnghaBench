
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void cvmx_debug_uart_strhex(char *str, unsigned char t)
{
  char hexchar[] = "0123456789ABCDEF";
  str[0] = hexchar[(t>>4)];
  str[1] = hexchar[t&0xF];
  str[2] = 0;
}
