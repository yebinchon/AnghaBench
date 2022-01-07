
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fdt_load_dtb_overlays_string (char const*) ;
 char* getenv (char*) ;
 int printf (char*,char const*) ;

void
fdt_load_dtb_overlays(const char *extras)
{
 const char *s;


 if (extras != ((void*)0) && *extras != '\0') {
  printf("Loading DTB overlays: '%s'\n", extras);
  fdt_load_dtb_overlays_string(extras);
 }


 s = getenv("fdt_overlays");
 if (s != ((void*)0) && *s != '\0') {
  printf("Loading DTB overlays: '%s'\n", s);
  fdt_load_dtb_overlays_string(s);
 }
}
