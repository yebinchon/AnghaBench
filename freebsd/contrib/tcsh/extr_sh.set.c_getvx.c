
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varent {int vec; } ;
typedef int Char ;


 int ERR_NAME ;
 int ERR_RANGE ;
 struct varent* adrof (int *) ;
 int blklen (int ) ;
 int stderror (int) ;
 int udvar (int *) ;

__attribute__((used)) static struct varent *
getvx(Char *vp, int subscr)
{
    struct varent *v = adrof(vp);

    if (v == 0)
 udvar(vp);
    if (subscr < 1 || subscr > blklen(v->vec))
 stderror(ERR_NAME | ERR_RANGE);
    return (v);
}
