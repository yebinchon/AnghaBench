
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* deprecated_register_valid ;

int
register_cached (int regnum)
{
  return deprecated_register_valid[regnum];
}
