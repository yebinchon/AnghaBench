
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varent {char* v_name; int ** vec; struct varent* v_left; struct varent* v_right; } ;
typedef int Char ;


 scalar_t__ Gmatch (int *,char*) ;

__attribute__((used)) static Char **
tw_find(Char *nam, struct varent *vp, int cmd)
{
    Char **rv;

    for (vp = vp->v_left; vp; vp = vp->v_right) {
 if (vp->v_left && (rv = tw_find(nam, vp, cmd)) != ((void*)0))
     return rv;
 if (cmd) {
     if (vp->v_name[0] != '-')
  continue;
     if (Gmatch(nam, &vp->v_name[1]) && vp->vec != ((void*)0))
  return vp->vec;
 }
 else
     if (Gmatch(nam, vp->v_name) && vp->vec != ((void*)0))
  return vp->vec;
    }
    return ((void*)0);
}
