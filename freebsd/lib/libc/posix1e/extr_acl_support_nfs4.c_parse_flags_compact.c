
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct flagnames_struct {char const letter; int flag; int * name; } ;


 int warnx (char*,char const*,char const) ;

__attribute__((used)) static int
parse_flags_compact(const char *str, uint32_t *var,
    const struct flagnames_struct *flags, const char *flags_name)
{
 int i, j, found;

 *var = 0;

 for (i = 0;; i++) {
  if (str[i] == '\0')
   return (0);


  if (str[i] == '-')
   continue;

  found = 0;

  for (j = 0; flags[j].name != ((void*)0); j++) {
   if (flags[j].letter == str[i]) {
    *var |= flags[j].flag;
    found = 1;
    break;
   }
  }

  if (!found) {
   warnx("malformed ACL: \"%s\" field contains "
       "invalid flag \"%c\"", flags_name, str[i]);
   return (-1);
  }
 }
}
