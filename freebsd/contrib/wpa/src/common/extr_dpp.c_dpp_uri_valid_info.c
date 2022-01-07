
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int dpp_uri_valid_info(const char *info)
{
 while (*info) {
  unsigned char val = *info++;

  if (val < 0x20 || val > 0x7e || val == 0x3b)
   return 0;
 }

 return 1;
}
