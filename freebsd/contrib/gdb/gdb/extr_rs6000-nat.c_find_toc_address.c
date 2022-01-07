
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmap {scalar_t__ tstart; scalar_t__ tend; scalar_t__ dstart; struct objfile* objfile; struct vmap* nxt; } ;
struct objfile {int dummy; } ;
typedef scalar_t__ CORE_ADDR ;


 int error (char*,int ) ;
 int local_hex_string (scalar_t__) ;
 struct objfile* symfile_objfile ;
 struct vmap* vmap ;

__attribute__((used)) static CORE_ADDR
find_toc_address (CORE_ADDR pc)
{
  struct vmap *vp;
  extern CORE_ADDR get_toc_offset (struct objfile *);

  for (vp = vmap; vp; vp = vp->nxt)
    {
      if (pc >= vp->tstart && pc < vp->tend)
 {

   return vp->dstart + get_toc_offset (vp->objfile == ((void*)0)
           ? symfile_objfile
           : vp->objfile);
 }
    }
  error ("Unable to find TOC entry for pc %s\n", local_hex_string (pc));
}
