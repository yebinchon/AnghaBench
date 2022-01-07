
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int login_cap_t ;


 int login_ttyok (int *,char const*,char*,char*) ;

int
auth_ttyok(login_cap_t *lc, const char * tty)
{
    return login_ttyok(lc, tty, "ttys.allow", "ttys.deny");
}
