
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {char* registers; } ;
struct TYPE_3__ {int offset; } ;


 int current_inferior ;
 TYPE_2__* get_regcache (int ,int) ;
 TYPE_1__* reg_defs ;

__attribute__((used)) static char *
register_data (int n, int fetch)
{
  char *registers = get_regcache (current_inferior, fetch)->registers;

  return registers + (reg_defs[n].offset / 8);
}
