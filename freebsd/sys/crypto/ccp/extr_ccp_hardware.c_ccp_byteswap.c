
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void
ccp_byteswap(char *data, size_t len)
{
 size_t i;
 char t;

 len--;
 for (i = 0; i < len; i++, len--) {
  t = data[i];
  data[i] = data[len];
  data[len] = t;
 }
}
