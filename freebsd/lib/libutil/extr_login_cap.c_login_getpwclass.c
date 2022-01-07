
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {char* pw_class; scalar_t__ pw_uid; } ;
typedef int login_cap_t ;


 char* LOGIN_DEFCLASS ;
 char* LOGIN_DEFROOTCLASS ;
 int * login_getclassbyname (char const*,struct passwd const*) ;

login_cap_t *
login_getpwclass(const struct passwd *pwd)
{
    const char *cls = ((void*)0);

    if (pwd != ((void*)0)) {
 cls = pwd->pw_class;
 if (cls == ((void*)0) || *cls == '\0')
     cls = (pwd->pw_uid == 0) ? LOGIN_DEFROOTCLASS : LOGIN_DEFCLASS;
    }




    return login_getclassbyname(cls, pwd);
}
