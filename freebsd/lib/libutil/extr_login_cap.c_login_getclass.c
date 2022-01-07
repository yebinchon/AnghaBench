
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int login_cap_t ;


 int * login_getclassbyname (char const*,int *) ;

login_cap_t *
login_getclass(const char *cls)
{
    return login_getclassbyname(cls, ((void*)0));
}
