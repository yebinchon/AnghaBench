
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmap {int loaded; int objfile; } ;


 int RETURN_MASK_ALL ;
 scalar_t__ catch_errors (int ,int ,char*,int ) ;
 int objfile_symbol_add ;
 int vmap_symtab (struct vmap*) ;

int
vmap_add_symbols (struct vmap *vp)
{
  if (catch_errors (objfile_symbol_add, vp->objfile,
      "Error while reading shared library symbols:\n",
      RETURN_MASK_ALL))
    {

      vp->loaded = 1;
      vmap_symtab (vp);
      return 1;
    }
  return 0;
}
