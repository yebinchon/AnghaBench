
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct ui_file {int dummy; } ;


 scalar_t__ VALUE_OPTIMIZED_OUT (struct value*) ;
 int fprintf_filtered (struct ui_file*,char*) ;

__attribute__((used)) static int
value_check_printable (struct value *val, struct ui_file *stream)
{
  if (val == 0)
    {
      fprintf_filtered (stream, "<address of value unknown>");
      return 0;
    }

  if (VALUE_OPTIMIZED_OUT (val))
    {
      fprintf_filtered (stream, "<value optimized out>");
      return 0;
    }

  return 1;
}
