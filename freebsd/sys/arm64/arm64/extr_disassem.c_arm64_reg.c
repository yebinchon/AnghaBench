
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const** w_reg ;
 char const** x_reg ;

__attribute__((used)) static const char *
arm64_reg(int b64, int num)
{

 if (b64 != 0)
  return (x_reg[num]);

 return (w_reg[num]);
}
