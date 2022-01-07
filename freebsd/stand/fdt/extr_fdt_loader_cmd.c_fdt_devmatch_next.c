
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdt_property {char const* data; } ;


 int fdt_apply_overlays () ;
 struct fdt_property* fdt_get_property (int *,int,char*,int*) ;
 int fdt_next_node (int *,int,int*) ;
 int fdt_path_offset (int *,char*) ;
 int fdt_setup_fdtp () ;
 int * fdtp ;
 int printf (char*) ;
 scalar_t__ strcmp (char const*,char*) ;

const char *
fdt_devmatch_next(int *tag, int *compatlen)
{
 const struct fdt_property *p;
 const struct fdt_property *status;
 int o, len = -1;
 static int depth = 0;

 if (fdtp == ((void*)0)) {
  fdt_setup_fdtp();
  fdt_apply_overlays();
 }

 if (*tag != 0) {
  o = *tag;

  if (o < 0)
   return (((void*)0));
 } else {
  o = fdt_path_offset(fdtp, "/");
  if (o < 0) {
   printf("Can't find dtb\n");
   return (((void*)0));
  }
  depth = 0;
 }


 while (1) {
  p = ((void*)0);
  if (o >= 0 && depth >= 0) {

   status = fdt_get_property(fdtp, o, "status", &len);
   if (len > 0) {
    if (strcmp(status->data, "disabled") == 0) {
     o = fdt_next_node(fdtp, o, &depth);
     if (o < 0)
      return (((void*)0));
     continue;
    }
   }

   p = fdt_get_property(fdtp, o, "compatible", &len);
  }
  if (p)
   break;
  o = fdt_next_node(fdtp, o, &depth);
  if (o < 0)
   return (((void*)0));
 }


 o = fdt_next_node(fdtp, o, &depth);
 *tag = o;

 if (len >= 0) {
  *compatlen = len;
  return (p->data);
 }
 return (((void*)0));
}
