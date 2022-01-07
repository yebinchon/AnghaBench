
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg {int dummy; } ;


 struct reg* reg_defs ;

struct reg *
find_register_by_number (int n)
{
  return &reg_defs[n];
}
