
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int login_cap_t ;


 int login_hostok (int *,char const*,char const*,char*,char*) ;

int
auth_hostok(login_cap_t *lc, const char *host, const char *ip)
{
    return login_hostok(lc, host, ip, "host.allow", "host.deny");
}
