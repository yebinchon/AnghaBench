
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FDT_ERR_NOTFOUND ;
 int debugf (char*) ;
 int fdt_add_subnode (int *,int ,char*) ;
 scalar_t__ fdt_getprop (int *,int,char*,int *) ;
 int fdt_platform_fixups () ;
 int fdt_setprop (int *,int,char*,int *,int ) ;
 scalar_t__ fdt_setup_fdtp () ;
 int fdt_subnode_offset (int *,int ,char*) ;
 int * fdtp ;

__attribute__((used)) static int
fdt_fixup(void)
{
 int chosen;

 debugf("fdt_fixup()\n");

 if (fdtp == ((void*)0) && fdt_setup_fdtp() != 0)
  return (0);


 if ((chosen = fdt_subnode_offset(fdtp, 0, "chosen")) ==
     -FDT_ERR_NOTFOUND)
  chosen = fdt_add_subnode(fdtp, 0, "chosen");


 if (fdt_getprop(fdtp, chosen, "fixup-applied", ((void*)0)))
  return (1);

 fdt_platform_fixups();






 chosen = fdt_subnode_offset(fdtp, 0, "chosen");
 fdt_setprop(fdtp, chosen, "fixup-applied", ((void*)0), 0);
 return (1);
}
