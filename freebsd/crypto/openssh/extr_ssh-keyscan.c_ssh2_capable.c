
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
ssh2_capable(int remote_major, int remote_minor)
{
 switch (remote_major) {
 case 1:
  if (remote_minor == 99)
   return 1;
  break;
 case 2:
  return 1;
 default:
  break;
 }
 return 0;
}
