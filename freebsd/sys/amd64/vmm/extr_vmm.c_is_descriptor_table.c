
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool
is_descriptor_table(int reg)
{

 switch (reg) {
 case 128:
 case 129:
  return (1);
 default:
  return (0);
 }
}
