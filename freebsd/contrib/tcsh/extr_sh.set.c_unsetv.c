
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varent {int dummy; } ;
typedef int Char ;


 struct varent* adrof1 (int *,int *) ;
 int shvhed ;
 int udvar (int *) ;
 int unsetv1 (struct varent*) ;

void
unsetv(Char *var)
{
    struct varent *vp;

    if ((vp = adrof1(var, &shvhed)) == 0)
 udvar(var);
    unsetv1(vp);
}
