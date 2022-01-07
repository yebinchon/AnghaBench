
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {char const* pw_dir; } ;
typedef int pwbuf ;


 char* el_calloc (size_t,int) ;
 int el_free (char*) ;
 struct passwd* getpwnam (char*) ;
 struct passwd* getpwnam_r (char*,struct passwd*,char*,int,...) ;
 struct passwd* getpwuid (int ) ;
 struct passwd* getpwuid_r (int ,struct passwd*,char*,int,...) ;
 int getuid () ;
 int snprintf (char*,size_t,char*,char const*,char const*) ;
 char* strchr (char const*,char) ;
 char* strdup (char const*) ;
 int strlen (char const*) ;
 int strncpy (char*,char const*,size_t) ;

char *
fn_tilde_expand(const char *txt)
{




 struct passwd *pass;
 char *temp;
 size_t len = 0;

 if (txt[0] != '~')
  return strdup(txt);

 temp = strchr(txt + 1, '/');
 if (temp == ((void*)0)) {
  temp = strdup(txt + 1);
  if (temp == ((void*)0))
   return ((void*)0);
 } else {

  len = (size_t)(temp - txt + 1);
  temp = el_calloc(len, sizeof(*temp));
  if (temp == ((void*)0))
   return ((void*)0);
  (void)strncpy(temp, txt + 1, len - 2);
  temp[len - 2] = '\0';
 }
 if (temp[0] == 0) {







  pass = getpwuid(getuid());

 } else {






  pass = getpwnam(temp);

 }
 el_free(temp);
 if (pass == ((void*)0))
  return strdup(txt);



 txt += len;

 len = strlen(pass->pw_dir) + 1 + strlen(txt) + 1;
 temp = el_calloc(len, sizeof(*temp));
 if (temp == ((void*)0))
  return ((void*)0);
 (void)snprintf(temp, len, "%s/%s", pass->pw_dir, txt);

 return temp;
}
