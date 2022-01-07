
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varent {int ** vec; } ;
typedef int Char ;


 int * STRNULL ;
 struct varent* adrof1 (int *,struct varent*) ;

Char *
value1(Char *var, struct varent *head)
{
    struct varent *vp;

    if (!var || !head)
 return (STRNULL);

    vp = adrof1(var, head);
    return ((vp == ((void*)0) || vp->vec == ((void*)0) || vp->vec[0] == ((void*)0)) ?
 STRNULL : vp->vec[0]);
}
