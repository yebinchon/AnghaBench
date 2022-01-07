
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_ERR ;
 int innetgr (char*,char*,char*,char*) ;
 int syslog (int ,char*) ;
 int yp_get_default_domain (char**) ;

__attribute__((used)) static int netgroup_match(char *group, char *machine, char *user)
{







    syslog(LOG_ERR, "NIS netgroup support not configured");
    return 0;

}
