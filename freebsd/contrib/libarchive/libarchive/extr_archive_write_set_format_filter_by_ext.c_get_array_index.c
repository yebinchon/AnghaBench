
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * name; } ;


 scalar_t__ cmpsuff (char const*,int *) ;
 TYPE_1__* names ;

__attribute__((used)) static int get_array_index(const char *name)
{
  int i;

  for (i = 0; names[i].name != ((void*)0); i++)
  {
    if (cmpsuff(name, names[i].name) == 0)
      return i;
  }
  return -1;

}
