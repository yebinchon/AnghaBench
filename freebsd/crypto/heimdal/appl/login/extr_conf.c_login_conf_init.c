
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _PATH_LOGIN_CONF ;
 int cgetent (int *,char**,char*) ;
 int confbuf ;

__attribute__((used)) static int
login_conf_init(void)
{
    char *files[] = { _PATH_LOGIN_CONF, ((void*)0) };
    return cgetent(&confbuf, files, "default");
}
