
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FDT_ERR_NOTFOUND ;
 int debugf (char*,char const*) ;
 int fdt_load_dtb_overlay (char*) ;
 int fdt_print_overlay_load_error (int,char*) ;
 int free (char*) ;
 char* malloc (int) ;
 int snprintf (char*,int,char*,char*) ;
 char* strchr (char*,char) ;
 char* strdup (char const*) ;
 int strlen (char*) ;

__attribute__((used)) static int
fdt_load_dtb_overlays_string(const char * filenames)
{
 char *names;
 char *name, *name_ext;
 char *comaptr;
 int err, namesz;

 debugf("fdt_load_dtb_overlays_string(%s)\n", filenames);

 names = strdup(filenames);
 if (names == ((void*)0))
  return (1);
 name = names;
 do {
  comaptr = strchr(name, ',');
  if (comaptr)
   *comaptr = '\0';
  err = fdt_load_dtb_overlay(name);
  if (err == FDT_ERR_NOTFOUND) {

   namesz = strlen(name) + 6;
   name_ext = malloc(namesz);
   if (name_ext == ((void*)0)) {
    fdt_print_overlay_load_error(err, name);
    name = comaptr + 1;
    continue;
   }
   snprintf(name_ext, namesz, "%s.dtbo", name);
   err = fdt_load_dtb_overlay(name_ext);
   free(name_ext);
  }

  if (err != 0)
   fdt_print_overlay_load_error(err, name);
  name = comaptr + 1;
 } while(comaptr);

 free(names);
 return (0);
}
