
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct general_symbol_info {scalar_t__ language; } ;


 int DMGL_ANSI ;
 int DMGL_JAVA ;
 int DMGL_PARAMS ;
 char* cplus_demangle (char const*,int) ;
 scalar_t__ language_auto ;
 scalar_t__ language_cplus ;
 scalar_t__ language_java ;
 scalar_t__ language_objc ;
 scalar_t__ language_unknown ;
 char* objc_demangle (char const*,int ) ;

__attribute__((used)) static char *
symbol_find_demangled_name (struct general_symbol_info *gsymbol,
       const char *mangled)
{
  char *demangled = ((void*)0);

  if (gsymbol->language == language_unknown)
    gsymbol->language = language_auto;

  if (gsymbol->language == language_objc
      || gsymbol->language == language_auto)
    {
      demangled =
 objc_demangle (mangled, 0);
      if (demangled != ((void*)0))
 {
   gsymbol->language = language_objc;
   return demangled;
 }
    }
  if (gsymbol->language == language_cplus
      || gsymbol->language == language_auto)
    {
      demangled =
        cplus_demangle (mangled, DMGL_PARAMS | DMGL_ANSI);
      if (demangled != ((void*)0))
 {
   gsymbol->language = language_cplus;
   return demangled;
 }
    }
  if (gsymbol->language == language_java)
    {
      demangled =
        cplus_demangle (mangled,
                        DMGL_PARAMS | DMGL_ANSI | DMGL_JAVA);
      if (demangled != ((void*)0))
 {
   gsymbol->language = language_java;
   return demangled;
 }
    }
  return ((void*)0);
}
