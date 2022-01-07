
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int YPLOCK () ;
 int YPUNLOCK () ;
 int yp_unbind_locked (char*) ;

void
yp_unbind(char *dom)
{
 YPLOCK();
 yp_unbind_locked(dom);
 YPUNLOCK();
}
