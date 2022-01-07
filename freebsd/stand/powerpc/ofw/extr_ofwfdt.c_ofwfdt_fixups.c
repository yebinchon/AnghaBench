
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int phandle_t ;
typedef int path ;
typedef int node ;
typedef int len ;
typedef scalar_t__ ihandle_t ;
typedef int cell_t ;
typedef int base ;


 int OF_call_method (char*,scalar_t__,int,int,int ,int*) ;
 void* OF_claim (int ,int,int) ;
 int OF_finddevice (char*) ;
 int OF_getprop (int,char*,int*,int) ;
 scalar_t__ OF_hasprop (int,char*) ;
 int OF_instance_to_package (int ) ;
 scalar_t__ OF_open (char*) ;
 int OF_package_to_path (int,char*,int) ;
 int cpu_to_fdt32 (int) ;
 int fdt32_to_cpu (int const) ;
 int fdt_add_mem_rsv (void*,int,int) ;
 int fdt_delprop (void*,int,char*) ;
 int* fdt_getprop (void*,int,char const*,int*) ;
 int fdt_path_offset (void*,char*) ;
 int fdt_setprop (void*,int,char const*,int*,int) ;

__attribute__((used)) static void
ofwfdt_fixups(void *fdtp)
{
 int offset, len, i;
 phandle_t node;
 ihandle_t rtas;
 const void *prop;





 offset = fdt_path_offset(fdtp, "/rtas");
 if (offset > 0) {
  uint32_t base;
  void *rtasmem;
  char path[255];

  node = OF_finddevice("/rtas");
  OF_package_to_path(node, path, sizeof(path));
  OF_getprop(node, "rtas-size", &len, sizeof(len));


  rtasmem = OF_claim(0, len, 4096);


  rtas = OF_open(path);
  base = 0;
  OF_call_method("instantiate-rtas", rtas, 1, 1, (cell_t)rtas,
      &base);


  base = cpu_to_fdt32(base);
  fdt_setprop(fdtp, offset, "linux,rtas-entry", &base,
      sizeof(base));
  base = cpu_to_fdt32((uint32_t)rtasmem);
  offset = fdt_path_offset(fdtp, "/rtas");
  fdt_setprop(fdtp, offset, "linux,rtas-base", &base,
      sizeof(base));


  fdt_add_mem_rsv(fdtp, base, len);
 } else {





  offset = fdt_path_offset(fdtp, "/memory@0");
  if (offset > 0)
   fdt_delprop(fdtp, offset, "available");
 }





 offset = fdt_path_offset(fdtp, "/chosen");
 if (offset > 0) {
  const char *chosenprops[] = {"stdout", "stdin", "mmu", "cpu",
      ((void*)0)};
  const uint32_t *ihand;
  for (i = 0; chosenprops[i] != ((void*)0); i++) {
   ihand = fdt_getprop(fdtp, offset, chosenprops[i], &len);
   if (ihand != ((void*)0) && len == sizeof(*ihand)) {
    node = OF_instance_to_package(
        fdt32_to_cpu(*ihand));
    if (OF_hasprop(node, "phandle"))
     OF_getprop(node, "phandle", &node,
         sizeof(node));
    else if (OF_hasprop(node, "linux,phandle"))
     OF_getprop(node, "linux,phandle", &node,
         sizeof(node));
    else if (OF_hasprop(node, "ibm,phandle"))
     OF_getprop(node, "ibm,phandle", &node,
         sizeof(node));
    node = cpu_to_fdt32(node);
    fdt_setprop(fdtp, offset, chosenprops[i], &node,
        sizeof(node));
   }


   offset = fdt_path_offset(fdtp, "/chosen");
  }
 }
}
