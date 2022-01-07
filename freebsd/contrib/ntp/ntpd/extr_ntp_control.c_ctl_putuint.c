
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int buffer ;


 int INSIST (int) ;
 int ctl_putunqstr (char const*,char*,int) ;
 int snprintf (char*,int,char*,int ) ;

__attribute__((used)) static void
ctl_putuint(
 const char *tag,
 u_long uval
 )
{
 char buffer[24];
 int rc;

 rc = snprintf(buffer, sizeof(buffer), "%lu", uval);
 INSIST(rc >= 0 && (size_t)rc < sizeof(buffer));
 ctl_putunqstr(tag, buffer, rc);
}
