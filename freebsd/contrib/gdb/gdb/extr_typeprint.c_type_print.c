
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
struct type {int dummy; } ;


 int LA_PRINT_TYPE (struct type*,char*,struct ui_file*,int,int ) ;

void
type_print (struct type *type, char *varstring, struct ui_file *stream,
     int show)
{
  LA_PRINT_TYPE (type, varstring, stream, show, 0);
}
