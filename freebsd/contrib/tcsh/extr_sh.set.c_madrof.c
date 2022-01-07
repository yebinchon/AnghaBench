
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varent {int v_name; struct varent* v_left; struct varent* v_right; } ;
typedef int Char ;


 scalar_t__ Gmatch (int ,int *) ;

__attribute__((used)) static struct varent *
madrof(Char *pat, struct varent *vp)
{
    struct varent *vp1;

    for (vp = vp->v_left; vp; vp = vp->v_right) {
 if (vp->v_left && (vp1 = madrof(pat, vp)) != ((void*)0))
     return vp1;
 if (Gmatch(vp->v_name, pat))
     return vp;
    }
    return vp;
}
