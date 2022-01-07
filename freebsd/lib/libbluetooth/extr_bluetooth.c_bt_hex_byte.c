
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bt_hex_nibble (char const) ;

__attribute__((used)) static int
bt_hex_byte(char const *str)
{
 int n1, n2;

 if ((n1 = bt_hex_nibble(str[0])) < 0)
  return (-1);

 if ((n2 = bt_hex_nibble(str[1])) < 0)
  return (-1);

 return ((((n1 & 0x0f) << 4) | (n2 & 0x0f)) & 0xff);
}
