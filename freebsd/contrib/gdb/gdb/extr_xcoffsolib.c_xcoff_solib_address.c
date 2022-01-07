
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmap {scalar_t__ tstart; scalar_t__ tend; scalar_t__* member; int name; struct vmap* nxt; } ;
typedef scalar_t__ CORE_ADDR ;


 struct vmap* vmap ;
 int xasprintf (char**,char*,int ,char*,scalar_t__*,char*) ;
 int xfree (char*) ;

char *
xcoff_solib_address (CORE_ADDR addr)
{
  static char *buffer = ((void*)0);
  struct vmap *vp = vmap;



  if (vp == ((void*)0))
    return ((void*)0);
  for (vp = vp->nxt; vp; vp = vp->nxt)
    if (vp->tstart <= addr && addr < vp->tend)
      {
 xfree (buffer);
 xasprintf (&buffer, "%s%s%s%s",
       vp->name,
       *vp->member ? "(" : "",
       vp->member,
       *vp->member ? ")" : "");
 return buffer;
      }
  return ((void*)0);
}
