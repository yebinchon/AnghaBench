
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;


 int INSIST (int) ;
 int ctl_putunqstr (char const*,char*,int) ;
 int snprintf (char*,int,char*,int,double) ;

__attribute__((used)) static void
ctl_putdblf(
 const char * tag,
 int use_f,
 int precision,
 double d
 )
{
 char buffer[40];
 int rc;

 rc = snprintf(buffer, sizeof(buffer),
        (use_f ? "%.*f" : "%.*g"),
        precision, d);
 INSIST(rc >= 0 && (size_t)rc < sizeof(buffer));
 ctl_putunqstr(tag, buffer, rc);
}
