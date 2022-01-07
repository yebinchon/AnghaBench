
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nai_realm {char* realm; } ;


 int os_free (char*) ;
 scalar_t__ os_strcasecmp (char*,char const*) ;
 char* os_strchr (char*,char) ;
 char* os_strdup (char*) ;

__attribute__((used)) static int nai_realm_match(struct nai_realm *realm, const char *home_realm)
{
 char *tmp, *pos, *end;
 int match = 0;

 if (realm->realm == ((void*)0) || home_realm == ((void*)0))
  return 0;

 if (os_strchr(realm->realm, ';') == ((void*)0))
  return os_strcasecmp(realm->realm, home_realm) == 0;

 tmp = os_strdup(realm->realm);
 if (tmp == ((void*)0))
  return 0;

 pos = tmp;
 while (*pos) {
  end = os_strchr(pos, ';');
  if (end)
   *end = '\0';
  if (os_strcasecmp(pos, home_realm) == 0) {
   match = 1;
   break;
  }
  if (end == ((void*)0))
   break;
  pos = end + 1;
 }

 os_free(tmp);

 return match;
}
