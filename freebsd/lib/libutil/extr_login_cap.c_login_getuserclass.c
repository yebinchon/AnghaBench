
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {int dummy; } ;
typedef int login_cap_t ;


 int LOGIN_MECLASS ;
 int * login_getclassbyname (int ,struct passwd const*) ;

login_cap_t *
login_getuserclass(const struct passwd *pwd)
{
    return login_getclassbyname(LOGIN_MECLASS, pwd);
}
