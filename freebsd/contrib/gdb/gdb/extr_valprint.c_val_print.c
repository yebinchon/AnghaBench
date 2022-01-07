
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
struct type {int dummy; } ;
typedef enum val_prettyprint { ____Placeholder_val_prettyprint } val_prettyprint ;
typedef int CORE_ADDR ;


 int LA_VAL_PRINT (struct type*,char*,int,int ,struct ui_file*,int,int,int,int) ;
 int QUIT ;
 scalar_t__ TYPE_STUB (struct type*) ;
 int Val_no_prettyprint ;
 int Val_pretty_default ;
 int Val_prettyprint ;
 struct type* check_typedef (struct type*) ;
 int fprintf_filtered (struct ui_file*,char*) ;
 int gdb_flush (struct ui_file*) ;
 scalar_t__ prettyprint_structs ;

int
val_print (struct type *type, char *valaddr, int embedded_offset,
    CORE_ADDR address, struct ui_file *stream, int format, int deref_ref,
    int recurse, enum val_prettyprint pretty)
{
  struct type *real_type = check_typedef (type);
  if (pretty == Val_pretty_default)
    {
      pretty = prettyprint_structs ? Val_prettyprint : Val_no_prettyprint;
    }

  QUIT;





  if (TYPE_STUB (real_type))
    {
      fprintf_filtered (stream, "<incomplete type>");
      gdb_flush (stream);
      return (0);
    }

  return (LA_VAL_PRINT (type, valaddr, embedded_offset, address,
   stream, format, deref_ref, recurse, pretty));
}
