
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ui_file {int dummy; } ;
struct type {int dummy; } ;
struct symbol {int dummy; } ;
struct TYPE_2__ {int la_language; } ;


 int CHECK_TYPEDEF (struct type*) ;
 int DEPRECATED_SYMBOL_NAME (struct symbol*) ;
 int SYMBOL_PRINT_NAME (struct symbol*) ;
 int SYMBOL_TYPE (struct symbol*) ;
 int TYPE_NAME (int ) ;
 TYPE_1__* current_language ;
 int error (char*) ;
 int fprintf_filtered (struct ui_file*,char*,...) ;




 int strcmp (int ,int ) ;
 int type_print (struct type*,char*,struct ui_file*,int ) ;

void
typedef_print (struct type *type, struct symbol *new, struct ui_file *stream)
{
  CHECK_TYPEDEF (type);
  switch (current_language->la_language)
    {
    default:
      error ("Language not supported.");
    }
  fprintf_filtered (stream, ";\n");
}
