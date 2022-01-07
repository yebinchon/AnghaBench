
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;


 int INSIST (int) ;
 int ctl_putunqstr (char const*,char*,int) ;
 int snprintf (char*,int,char*,long) ;

__attribute__((used)) static void
ctl_putint(
 const char *tag,
 long ival
 )
{
 char buffer[24];
 int rc;

 rc = snprintf(buffer, sizeof(buffer), "%ld", ival);
 INSIST(rc >= 0 && (size_t)rc < sizeof(buffer));
 ctl_putunqstr(tag, buffer, rc);
}
