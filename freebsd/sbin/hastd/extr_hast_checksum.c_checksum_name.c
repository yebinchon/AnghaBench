
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *
checksum_name(int num)
{

 switch (num) {
 case 129:
  return ("none");
 case 130:
  return ("crc32");
 case 128:
  return ("sha256");
 }
 return ("unknown");
}
