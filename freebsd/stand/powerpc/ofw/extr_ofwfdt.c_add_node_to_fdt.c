
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef scalar_t__ phandle_t ;
typedef int node ;
typedef int name ;


 scalar_t__ OF_child (scalar_t__) ;
 int OF_getprop (scalar_t__,char*,void*,int) ;
 int OF_getproplen (scalar_t__,char*) ;
 int OF_hasprop (scalar_t__,char*) ;
 scalar_t__ OF_nextprop (scalar_t__,char*,char*) ;
 int OF_package_to_path (scalar_t__,char*,int) ;
 scalar_t__ OF_peer (scalar_t__) ;
 int fdt_add_subnode (void*,int,char*) ;
 int fdt_setprop (void*,int,char*,scalar_t__*,int) ;
 int free (void*) ;
 void* malloc (int) ;
 int printf (char*,...) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static void
add_node_to_fdt(void *buffer, phandle_t node, int fdt_offset)
{
 int i, child_offset, error;
 char name[255], *lastprop, *subname;
 void *propbuf;
 ssize_t proplen;

 lastprop = ((void*)0);
 while (OF_nextprop(node, lastprop, name) > 0) {
  proplen = OF_getproplen(node, name);


  if (proplen < 0)
   proplen = 0;
  if (proplen > 1024)
   proplen = 1024;

  propbuf = malloc(proplen);
  if (propbuf == ((void*)0)) {
   printf("Cannot allocate memory for prop %s\n", name);
   return;
  }
  OF_getprop(node, name, propbuf, proplen);
  error = fdt_setprop(buffer, fdt_offset, name, propbuf, proplen);
  free(propbuf);
  lastprop = name;
  if (error)
   printf("Error %d adding property %s to "
       "node %d\n", error, name, fdt_offset);
 }

 if (!OF_hasprop(node, "phandle") && !OF_hasprop(node, "linux,phandle")
     && !OF_hasprop(node, "ibm,phandle"))
  fdt_setprop(buffer, fdt_offset, "phandle", &node, sizeof(node));

 for (node = OF_child(node); node > 0; node = OF_peer(node)) {
  OF_package_to_path(node, name, sizeof(name));
  subname = strrchr(name, '/');
  subname++;
  child_offset = fdt_add_subnode(buffer, fdt_offset, subname);
  if (child_offset < 0) {
   printf("Error %d adding node %s (%s), skipping\n",
       child_offset, name, subname);
   continue;
  }

                add_node_to_fdt(buffer, node, child_offset);
 }
}
