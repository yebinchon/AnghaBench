
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct ui_file {int dummy; } ;
typedef enum val_prettyprint { ____Placeholder_val_prettyprint } val_prettyprint ;


 int VALUE_ADDRESS (struct value*) ;
 int VALUE_CONTENTS_ALL (struct value*) ;
 int VALUE_EMBEDDED_OFFSET (struct value*) ;
 int VALUE_TYPE (struct value*) ;
 int val_print (int ,int ,int ,int ,struct ui_file*,int,int,int,int) ;
 int value_check_printable (struct value*,struct ui_file*) ;

int
common_val_print (struct value *val, struct ui_file *stream, int format,
    int deref_ref, int recurse, enum val_prettyprint pretty)
{
  if (!value_check_printable (val, stream))
    return 0;

  return val_print (VALUE_TYPE(val), VALUE_CONTENTS_ALL (val),
      VALUE_EMBEDDED_OFFSET (val), VALUE_ADDRESS (val),
      stream, format, deref_ref, recurse, pretty);
}
