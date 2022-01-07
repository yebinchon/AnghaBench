
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct suffix_code_t {char const* form; int * suffix; } ;


 scalar_t__ strcmp (int *,char const*) ;

__attribute__((used)) static const char *
get_suffix_code(const struct suffix_code_t *tbl, const char *suffix)
{
 int i;

 if (suffix == ((void*)0))
  return (((void*)0));
 for (i = 0; tbl[i].suffix != ((void*)0); i++) {
  if (strcmp(tbl[i].suffix, suffix) == 0)
   return (tbl[i].form);
 }
 return (((void*)0));
}
