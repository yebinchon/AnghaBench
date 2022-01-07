
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;



__attribute__((used)) static int
prefix(void *val, int size)
{
 u_char *name = (u_char *)val;
 int byte, bit, plen = 0;

 for (byte = 0; byte < size; byte++, plen += 8)
  if (name[byte] != 0xff)
   break;
 if (byte == size)
  return (plen);
 for (bit = 7; bit != 0; bit--, plen++)
  if (!(name[byte] & (1 << bit)))
   break;
 for (; bit != 0; bit--)
  if (name[byte] & (1 << bit))
   return(0);
 byte++;
 for (; byte < size; byte++)
  if (name[byte])
   return(0);
 return (plen);
}
