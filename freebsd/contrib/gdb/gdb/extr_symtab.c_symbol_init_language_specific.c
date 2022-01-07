
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * demangled_name; } ;
struct TYPE_4__ {TYPE_1__ cplus_specific; } ;
struct general_symbol_info {int language; TYPE_2__ language_specific; } ;
typedef enum language { ____Placeholder_language } language ;


 scalar_t__ language_cplus ;
 scalar_t__ language_java ;
 scalar_t__ language_objc ;
 int memset (TYPE_2__*,int ,int) ;

void
symbol_init_language_specific (struct general_symbol_info *gsymbol,
          enum language language)
{
  gsymbol->language = language;
  if (gsymbol->language == language_cplus
      || gsymbol->language == language_java
      || gsymbol->language == language_objc)
    {
      gsymbol->language_specific.cplus_specific.demangled_name = ((void*)0);
    }
  else
    {
      memset (&gsymbol->language_specific, 0,
       sizeof (gsymbol->language_specific));
    }
}
