
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct ui_file {int dummy; } ;
typedef enum val_prettyprint { ____Placeholder_val_prettyprint } val_prettyprint ;


 int common_val_print (struct value*,struct ui_file*,int,int,int ,int) ;

int
scm_value_print (struct value *val, struct ui_file *stream, int format,
   enum val_prettyprint pretty)
{
  return (common_val_print (val, stream, format, 1, 0, pretty));
}
