
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ db_max_width ;
 scalar_t__ db_output_position ;
 int db_printf (char*) ;

void
db_end_line(int field_width)
{
 if (db_output_position + field_width > db_max_width)
     db_printf("\n");
}
