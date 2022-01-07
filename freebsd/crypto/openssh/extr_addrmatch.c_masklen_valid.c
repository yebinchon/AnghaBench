
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;





__attribute__((used)) static inline int
masklen_valid(int af, u_int masklen)
{
 switch (af) {
 case 129:
  return masklen <= 32 ? 0 : -1;
 case 128:
  return masklen <= 128 ? 0 : -1;
 default:
  return -1;
 }
}
