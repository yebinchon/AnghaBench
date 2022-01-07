
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reggroup {char const* name; } ;



const char *
reggroup_name (struct reggroup *group)
{
  return group->name;
}
