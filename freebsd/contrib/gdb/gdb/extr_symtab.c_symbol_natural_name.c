
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* demangled_name; } ;
struct TYPE_4__ {TYPE_1__ cplus_specific; } ;
struct general_symbol_info {scalar_t__ language; char* name; TYPE_2__ language_specific; } ;


 scalar_t__ language_cplus ;
 scalar_t__ language_java ;
 scalar_t__ language_objc ;

char *
symbol_natural_name (const struct general_symbol_info *gsymbol)
{
  if ((gsymbol->language == language_cplus
       || gsymbol->language == language_java
       || gsymbol->language == language_objc)
      && (gsymbol->language_specific.cplus_specific.demangled_name != ((void*)0)))
    {
      return gsymbol->language_specific.cplus_specific.demangled_name;
    }
  else
    {
      return gsymbol->name;
    }
}
