
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {int dummy; } ;
typedef int salt ;


 int MIN (size_t,int) ;
 int endpwent () ;
 int explicit_bzero (char*,int ) ;
 struct passwd* getpwent () ;
 int setpwent () ;
 char* shadow_pw (struct passwd*) ;
 int strlcpy (char*,char*,int) ;
 int strlen (char*) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static const char *
pick_salt(void)
{
 struct passwd *pw;
 char *passwd, *p;
 size_t typelen;
 static char salt[32];

 if (salt[0] != '\0')
  return salt;
 strlcpy(salt, "xx", sizeof(salt));
 setpwent();
 while ((pw = getpwent()) != ((void*)0)) {
  passwd = shadow_pw(pw);
  if (passwd[0] == '$' && (p = strrchr(passwd+1, '$')) != ((void*)0)) {
   typelen = p - passwd + 1;
   strlcpy(salt, passwd, MIN(typelen, sizeof(salt)));
   explicit_bzero(passwd, strlen(passwd));
   goto out;
  }
 }
 out:
 endpwent();
 return salt;
}
