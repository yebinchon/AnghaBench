
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
bt_hex_nibble(char nibble)
{
 if ('0' <= nibble && nibble <= '9')
  return (nibble - '0');

 if ('a' <= nibble && nibble <= 'f')
  return (nibble - 'a' + 0xa);

 if ('A' <= nibble && nibble <= 'F')
  return (nibble - 'A' + 0xa);

 return (-1);
}
