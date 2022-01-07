
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {int pw_name; } ;


 int errx (int,char*) ;
 char* estrdup (int ) ;
 char* get_default_username () ;
 char* get_pobox (char const**) ;
 char* getenv (char*) ;
 struct passwd* getpwuid (int ) ;
 int getuid () ;
 char* strchr (char*,char) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static void
parse_pobox (char *a0, const char **host, const char **user)
{
    const char *h, *u;
    char *p;
    int po = 0;

    if (a0 == ((void*)0)) {

 *user = getenv ("USERNAME");
 if (*user == ((void*)0)) {
     struct passwd *pwd = getpwuid (getuid ());

     if (pwd == ((void*)0))
  errx (1, "Who are you?");
     *user = estrdup (pwd->pw_name);
 }
 *host = get_pobox (user);
 return;
    }


    if(strncmp(a0, "po:", 3) == 0) {
 a0 += 3;
 po++;
    }


    p = strchr(a0, '@');
    if(p != ((void*)0)) {
 *p++ = '\0';
 h = p;
    } else {
 h = a0;
    }


    p = strchr(a0, ':');
    if(p != ((void*)0)) {
 *p++ = '\0';
 u = p;
    } else {
 u = a0;
    }
    if(h == u) {

 if(po) {
     h = get_pobox (&u);
 } else {
     u = get_default_username ();
     if (u == ((void*)0))
  errx (1, "Who are you?");
 }
    }
    *host = h;
    *user = u;
}
