
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ns_samename (char const*,char const*) ;

__attribute__((used)) static size_t
prune_origin(const char *name, const char *origin) {
 const char *oname = name;

 while (*name != '\0') {
  if (origin != ((void*)0) && ns_samename(name, origin) == 1)
   return (name - oname - (name > oname));
  while (*name != '\0') {
   if (*name == '\\') {
    name++;

    if (*name == '\0')
     break;
   } else if (*name == '.') {
    name++;
    break;
   }
   name++;
  }
 }
 return (name - oname);
}
