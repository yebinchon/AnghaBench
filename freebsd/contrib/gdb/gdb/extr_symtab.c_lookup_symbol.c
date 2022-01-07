
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct symtab {int dummy; } ;
struct symbol {int dummy; } ;
struct block {int dummy; } ;
typedef int domain_enum ;
struct TYPE_2__ {scalar_t__ la_language; } ;


 int DMGL_ANSI ;
 int DMGL_PARAMS ;
 scalar_t__ alloca (int) ;
 scalar_t__ case_sensitive_off ;
 scalar_t__ case_sensitivity ;
 char* cplus_demangle (char const*,int) ;
 TYPE_1__* current_language ;
 scalar_t__ language_cplus ;
 struct symbol* lookup_symbol_aux (char const*,char const*,struct block const*,int const,int*,struct symtab**) ;
 int strlen (char const*) ;
 char tolower (char const) ;
 int xfree (char*) ;

struct symbol *
lookup_symbol (const char *name, const struct block *block,
        const domain_enum domain, int *is_a_field_of_this,
        struct symtab **symtab)
{
  char *demangled_name = ((void*)0);
  const char *modified_name = ((void*)0);
  const char *mangled_name = ((void*)0);
  int needtofreename = 0;
  struct symbol *returnval;

  modified_name = name;



  if (current_language->la_language == language_cplus)
    {
      demangled_name = cplus_demangle (name, DMGL_ANSI | DMGL_PARAMS);
      if (demangled_name)
 {
   mangled_name = name;
   modified_name = demangled_name;
   needtofreename = 1;
 }
    }

  if (case_sensitivity == case_sensitive_off)
    {
      char *copy;
      int len, i;

      len = strlen (name);
      copy = (char *) alloca (len + 1);
      for (i= 0; i < len; i++)
        copy[i] = tolower (name[i]);
      copy[len] = 0;
      modified_name = copy;
    }

  returnval = lookup_symbol_aux (modified_name, mangled_name, block,
     domain, is_a_field_of_this, symtab);
  if (needtofreename)
    xfree (demangled_name);

  return returnval;
}
