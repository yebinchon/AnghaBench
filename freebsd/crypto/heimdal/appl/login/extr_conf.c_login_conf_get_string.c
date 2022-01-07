
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cgetstr (int ,char*,char**) ;
 int confbuf ;
 scalar_t__ login_conf_init () ;

char *
login_conf_get_string(const char *str)
{
    char *value;
    if(login_conf_init() != 0)
 return ((void*)0);
    if(cgetstr(confbuf, (char *)str, &value) < 0)
 return ((void*)0);
    return value;
}
