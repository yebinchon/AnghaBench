
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int YPLOCK () ;
 int YPUNLOCK () ;
 int yp_get_default_domain_locked (char**) ;

int
yp_get_default_domain(char **domp)
{
 int r;

 YPLOCK();
 r = yp_get_default_domain_locked(domp);
 YPUNLOCK();
 return (r);
}
