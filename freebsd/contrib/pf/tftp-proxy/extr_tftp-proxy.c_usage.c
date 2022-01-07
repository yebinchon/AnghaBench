
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_ERR ;
 int __progname ;
 int exit (int) ;
 int syslog (int ,char*,int ) ;

__attribute__((used)) static void
usage(void)
{
 syslog(LOG_ERR, "usage: %s [-v] [-w transwait]", __progname);
 exit(1);
}
