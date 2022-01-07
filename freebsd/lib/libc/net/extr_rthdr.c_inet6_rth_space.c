
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int socklen_t ;




socklen_t
inet6_rth_space(int type, int segments)
{
 switch (type) {
 case 128:
  if ((segments >= 0) && (segments <= 127))
   return (((segments * 2) + 1) << 3);

 default:
  return (0);
 }
}
