
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *
compression_name(int num)
{

 switch (num) {
 case 128:
  return ("none");
 case 130:
  return ("hole");
 case 129:
  return ("lzf");
 }
 return ("unknown");
}
