
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct objfile {int dummy; } ;


 struct type* builtin_type_error ;
 int complaint (int *,char*) ;
 char* next_symbol_text (struct objfile*) ;
 int symfile_complaints ;

__attribute__((used)) static struct type *
error_type (char **pp, struct objfile *objfile)
{
  complaint (&symfile_complaints, "couldn't parse type; debugger out of date?");
  while (1)
    {

      while (**pp != '\0')
 {
   (*pp)++;
 }


      if ((*pp)[-1] == '\\' || (*pp)[-1] == '?')
 {
   *pp = next_symbol_text (objfile);
 }
      else
 {
   break;
 }
    }
  return (builtin_type_error);
}
