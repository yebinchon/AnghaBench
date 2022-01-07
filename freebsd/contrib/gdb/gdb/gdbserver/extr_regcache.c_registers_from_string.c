
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* registers; } ;


 int convert_ascii_to_int (char*,char*,int) ;
 int current_inferior ;
 TYPE_1__* get_regcache (int ,int) ;
 int register_bytes ;
 int strlen (char*) ;
 int warning (char*,int,int) ;

void
registers_from_string (char *buf)
{
  int len = strlen (buf);
  char *registers = get_regcache (current_inferior, 1)->registers;

  if (len != register_bytes * 2)
    {
      warning ("Wrong sized register packet (expected %d bytes, got %d)", 2*register_bytes, len);
      if (len > register_bytes * 2)
 len = register_bytes * 2;
    }
  convert_ascii_to_int (buf, registers, len / 2);
}
