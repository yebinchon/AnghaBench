
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int key ;


 int memcpy (char*,char const*,int) ;
 int quoted_strcpy (char*,char const*) ;
 char* strchr (char const*,char) ;
 int strcpy (char*,char*) ;
 int strlcat (char*,char*,int) ;
 int strlcpy (char*,char const*,int) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char const*,int) ;
 char* strstr (char const*,char*) ;

__attribute__((used)) static char *
pnpval_as_str(const char *val, const char *pnpinfo)
{
 static char retval[256];
 char key[256];
 char *cp;

 if (pnpinfo == ((void*)0)) {
  *retval = '\0';
  return retval;
 }

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
  quoted_strcpy(retval, pnpinfo + strlen(key + 1));
 else {
  cp = strstr(pnpinfo, key);
  if (cp == ((void*)0))
   strcpy(retval, "MISSING");
  else
   quoted_strcpy(retval, cp + strlen(key));
 }
 return retval;
}
