
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varent {int ** vec; } ;
typedef int Char ;


 int FALSE ;
 int STRfignore ;
 int TRUE ;
 struct varent* adrof (int ) ;
 scalar_t__ is_suffix (int *,int *) ;

__attribute__((used)) static int
ignored(Char *item)
{
    struct varent *vp;
    Char **cp;

    if ((vp = adrof(STRfignore)) == ((void*)0) || (cp = vp->vec) == ((void*)0))
 return (FALSE);
    for (; *cp != ((void*)0); cp++)
 if (is_suffix(item, *cp))
     return (TRUE);
    return (FALSE);
}
