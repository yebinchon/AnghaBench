
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int YPLOCK () ;
 int YPUNLOCK () ;
 int yp_bind_locked (char*) ;

int
yp_bind(char *dom)
{
 int r;

 YPLOCK();
 r = yp_bind_locked(dom);
 YPUNLOCK();
 return (r);
}
