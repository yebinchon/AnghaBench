
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
addr_unicast_masklen(int af)
{
 switch (af) {
 case 129:
  return 32;
 case 128:
  return 128;
 default:
  return -1;
 }
}
