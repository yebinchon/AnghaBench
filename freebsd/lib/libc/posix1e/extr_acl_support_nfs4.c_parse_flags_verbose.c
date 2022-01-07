
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct flagnames_struct {int flag; int * name; } ;


 int free (char*) ;
 scalar_t__ strcmp (int *,char*) ;
 char* strdup (char const*) ;
 char* strsep (char**,char*) ;
 int warnx (char*,char const*,char*) ;

__attribute__((used)) static int
parse_flags_verbose(const char *strp, uint32_t *var,
    const struct flagnames_struct *flags, const char *flags_name,
    int *try_compact)
{
 int i, found, ever_found = 0;
 char *str, *flag;

 str = strdup(strp);
 *try_compact = 0;
 *var = 0;

 while (str != ((void*)0)) {
  flag = strsep(&str, "/:");

  found = 0;
  for (i = 0; flags[i].name != ((void*)0); i++) {
   if (strcmp(flags[i].name, flag) == 0) {
    *var |= flags[i].flag;
    found = 1;
    ever_found = 1;
   }
  }

  if (!found) {
   if (ever_found)
    warnx("malformed ACL: \"%s\" field contains "
        "invalid flag \"%s\"", flags_name, flag);
   else
    *try_compact = 1;
   free(str);
   return (-1);
  }
 }

 free(str);
 return (0);
}
