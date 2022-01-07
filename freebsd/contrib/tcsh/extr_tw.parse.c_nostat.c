
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varent {int ** vec; } ;
typedef int Char ;


 int FALSE ;
 scalar_t__ Gmatch (int *,int *) ;
 int STRnostat ;
 int STRstar ;
 scalar_t__ Strcmp (int *,int ) ;
 int TRUE ;
 struct varent* adrof (int ) ;

__attribute__((used)) static int
nostat(Char *dir)
{
    struct varent *vp;
    Char **cp;

    if ((vp = adrof(STRnostat)) == ((void*)0) || (cp = vp->vec) == ((void*)0))
 return FALSE;
    for (; *cp != ((void*)0); cp++) {
 if (Strcmp(*cp, STRstar) == 0)
     return TRUE;
 if (Gmatch(dir, *cp))
     return TRUE;
    }
    return FALSE;
}
