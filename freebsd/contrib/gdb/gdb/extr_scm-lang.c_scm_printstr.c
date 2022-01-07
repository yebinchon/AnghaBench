
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;


 int fprintf_filtered (struct ui_file*,char*,char*) ;

__attribute__((used)) static void
scm_printstr (struct ui_file *stream, char *string, unsigned int length,
       int width, int force_ellipses)
{
  fprintf_filtered (stream, "\"%s\"", string);
}
