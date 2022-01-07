
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {char* pw_dir; } ;
typedef char Char ;


 char* Strsave (int ) ;
 int fix_yp_bugs () ;
 int free (char*) ;
 char** hes_resolve (int ,char*) ;
 int short2str (char const*) ;
 int str2short (char*) ;
 scalar_t__ strcmp (char*,char*) ;
 char* strtok (char*,char*) ;
 int xfree (char*) ;
 struct passwd* xgetpwnam (int ) ;

__attribute__((used)) static Char *
gethomedir(const Char *us)
{
    struct passwd *pp;





    pp = xgetpwnam(short2str(us));



    if (pp != ((void*)0)) {






     return Strsave(str2short(pp->pw_dir));
    }
    return ((void*)0);
}
