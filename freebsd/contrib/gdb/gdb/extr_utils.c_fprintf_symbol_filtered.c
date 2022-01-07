
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
typedef enum language { ____Placeholder_language } language ;


 int demangle ;
 int fputs_filtered (char*,struct ui_file*) ;
 int language_def (int) ;
 char* language_demangle (int ,char*,int) ;
 int xfree (char*) ;

void
fprintf_symbol_filtered (struct ui_file *stream, char *name,
    enum language lang, int arg_mode)
{
  char *demangled;

  if (name != ((void*)0))
    {

      if (!demangle)
 {
   fputs_filtered (name, stream);
 }
      else
 {
   demangled = language_demangle (language_def (lang), name, arg_mode);
   fputs_filtered (demangled ? demangled : name, stream);
   if (demangled != ((void*)0))
     {
       xfree (demangled);
     }
 }
    }
}
