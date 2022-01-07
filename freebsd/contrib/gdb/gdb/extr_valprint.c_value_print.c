
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct ui_file {int dummy; } ;
typedef enum val_prettyprint { ____Placeholder_val_prettyprint } val_prettyprint ;


 int LA_VALUE_PRINT (struct value*,struct ui_file*,int,int) ;
 int value_check_printable (struct value*,struct ui_file*) ;

int
value_print (struct value *val, struct ui_file *stream, int format,
      enum val_prettyprint pretty)
{
  if (!value_check_printable (val, stream))
    return 0;

  return LA_VALUE_PRINT (val, stream, format, pretty);
}
