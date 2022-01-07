
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct obstack {int dummy; } ;
struct TYPE_3__ {int * demangled_name; } ;
struct TYPE_4__ {TYPE_1__ cplus_specific; } ;
struct general_symbol_info {char* name; scalar_t__ language; TYPE_2__ language_specific; } ;


 scalar_t__ language_cplus ;
 scalar_t__ language_java ;
 scalar_t__ language_objc ;
 int * obsavestring (char*,int ,struct obstack*) ;
 int strlen (char*) ;
 char* symbol_find_demangled_name (struct general_symbol_info*,char*) ;
 int xfree (char*) ;

void
symbol_init_demangled_name (struct general_symbol_info *gsymbol,
                            struct obstack *obstack)
{
  char *mangled = gsymbol->name;
  char *demangled = ((void*)0);

  demangled = symbol_find_demangled_name (gsymbol, mangled);
  if (gsymbol->language == language_cplus
      || gsymbol->language == language_java
      || gsymbol->language == language_objc)
    {
      if (demangled)
 {
   gsymbol->language_specific.cplus_specific.demangled_name
     = obsavestring (demangled, strlen (demangled), obstack);
   xfree (demangled);
 }
      else
 gsymbol->language_specific.cplus_specific.demangled_name = ((void*)0);
    }
  else
    {

      if (demangled)
 xfree (demangled);
    }
}
