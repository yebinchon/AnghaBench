
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* registers; } ;


 int convert_int_to_ascii (char*,char*,int ) ;
 int current_inferior ;
 TYPE_1__* get_regcache (int ,int) ;
 int register_bytes ;

void
registers_to_string (char *buf)
{
  char *registers = get_regcache (current_inferior, 1)->registers;

  convert_int_to_ascii (registers, buf, register_bytes);
}
