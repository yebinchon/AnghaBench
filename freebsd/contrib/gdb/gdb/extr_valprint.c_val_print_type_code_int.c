
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
struct type {int dummy; } ;
typedef int LONGEST ;


 int TYPE_LENGTH (struct type*) ;
 scalar_t__ TYPE_UNSIGNED (struct type*) ;
 scalar_t__ extract_long_unsigned_integer (char*,int,int *) ;
 int print_hex_chars (struct ui_file*,unsigned char*,int) ;
 int print_longest (struct ui_file*,unsigned char,int ,int ) ;
 int unpack_long (struct type*,char*) ;

void
val_print_type_code_int (struct type *type, char *valaddr,
    struct ui_file *stream)
{
  if (TYPE_LENGTH (type) > sizeof (LONGEST))
    {
      LONGEST val;

      if (TYPE_UNSIGNED (type)
   && extract_long_unsigned_integer (valaddr, TYPE_LENGTH (type),
         &val))
 {
   print_longest (stream, 'u', 0, val);
 }
      else
 {




   print_hex_chars (stream, (unsigned char *) valaddr,
      TYPE_LENGTH (type));
 }
    }
  else
    {
      print_longest (stream, TYPE_UNSIGNED (type) ? 'u' : 'd', 0,
       unpack_long (type, valaddr));
    }
}
