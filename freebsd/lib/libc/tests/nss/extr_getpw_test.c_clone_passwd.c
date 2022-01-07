
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {int * pw_shell; int * pw_dir; int * pw_gecos; int * pw_class; int * pw_passwd; int * pw_name; } ;


 int ATF_REQUIRE (int ) ;
 int memcpy (struct passwd*,struct passwd const*,int) ;
 void* strdup (int *) ;

__attribute__((used)) static void
clone_passwd(struct passwd *dest, struct passwd const *src)
{
 ATF_REQUIRE(dest != ((void*)0));
 ATF_REQUIRE(src != ((void*)0));

 memcpy(dest, src, sizeof(struct passwd));
 if (src->pw_name != ((void*)0))
  dest->pw_name = strdup(src->pw_name);
 if (src->pw_passwd != ((void*)0))
  dest->pw_passwd = strdup(src->pw_passwd);
 if (src->pw_class != ((void*)0))
  dest->pw_class = strdup(src->pw_class);
 if (src->pw_gecos != ((void*)0))
  dest->pw_gecos = strdup(src->pw_gecos);
 if (src->pw_dir != ((void*)0))
  dest->pw_dir = strdup(src->pw_dir);
 if (src->pw_shell != ((void*)0))
  dest->pw_shell = strdup(dest->pw_shell);
}
