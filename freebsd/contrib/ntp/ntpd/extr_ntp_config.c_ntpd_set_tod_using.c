
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int line ;


 int RO ;
 int set_sys_var (char*,scalar_t__,int ) ;
 int snprintf (char*,int,char*,char const*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static void
ntpd_set_tod_using(
 const char *which
 )
{
 char line[128];

 snprintf(line, sizeof(line), "settimeofday=\"%s\"", which);
 set_sys_var(line, strlen(line) + 1, RO);
}
