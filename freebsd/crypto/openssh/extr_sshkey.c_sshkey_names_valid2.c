
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keytype {int type; int name; } ;


 int KEY_UNSPEC ;
 int free (char*) ;
 struct keytype* keytypes ;
 scalar_t__ match_pattern_list (int ,char*,int ) ;
 int sshkey_type_from_name (char*) ;
 scalar_t__ strcmp (char const*,char*) ;
 char* strdup (char const*) ;
 char* strsep (char**,char*) ;

int
sshkey_names_valid2(const char *names, int allow_wildcard)
{
 char *s, *cp, *p;
 const struct keytype *kt;
 int type;

 if (names == ((void*)0) || strcmp(names, "") == 0)
  return 0;
 if ((s = cp = strdup(names)) == ((void*)0))
  return 0;
 for ((p = strsep(&cp, ",")); p && *p != '\0';
     (p = strsep(&cp, ","))) {
  type = sshkey_type_from_name(p);
  if (type == KEY_UNSPEC) {
   if (allow_wildcard) {





    for (kt = keytypes; kt->type != -1; kt++) {
     if (match_pattern_list(kt->name,
         p, 0) != 0)
      break;
    }
    if (kt->type != -1)
     continue;
   }
   free(s);
   return 0;
  }
 }
 free(s);
 return 1;
}
