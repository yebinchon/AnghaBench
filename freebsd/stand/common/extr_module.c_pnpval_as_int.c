
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int key ;


 int memcpy (char*,char const*,int) ;
 char* strchr (char const*,char) ;
 int strlcat (char*,char*,int) ;
 int strlcpy (char*,char const*,int) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char const*,int) ;
 char* strstr (char const*,char*) ;
 int strtol (char const*,int *,int ) ;

__attribute__((used)) static int
pnpval_as_int(const char *val, const char *pnpinfo)
{
 int rv;
 char key[256];
 char *cp;

 if (pnpinfo == ((void*)0))
  return -1;

 cp = strchr(val, ';');
 key[0] = ' ';
 if (cp == ((void*)0))
  strlcpy(key + 1, val, sizeof(key) - 1);
 else {
  memcpy(key + 1, val, cp - val);
  key[cp - val + 1] = '\0';
 }
 strlcat(key, "=", sizeof(key));
 if (strncmp(key + 1, pnpinfo, strlen(key + 1)) == 0)
  rv = strtol(pnpinfo + strlen(key + 1), ((void*)0), 0);
 else {
  cp = strstr(pnpinfo, key);
  if (cp == ((void*)0))
   rv = -1;
  else
   rv = strtol(cp + strlen(key), ((void*)0), 0);
 }
 return rv;
}
