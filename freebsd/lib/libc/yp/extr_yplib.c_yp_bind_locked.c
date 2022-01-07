
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _yp_dobind (char*,int *) ;

__attribute__((used)) static int
yp_bind_locked(char *dom)
{
 return (_yp_dobind(dom, ((void*)0)));
}
