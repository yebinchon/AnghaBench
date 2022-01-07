
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; } ;


 TYPE_1__* solib_end ;

char *
child_solib_loaded_library_pathname (int pid)
{
  return !solib_end || !solib_end->name[0] ? ((void*)0) : solib_end->name;
}
