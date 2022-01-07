
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdt_header {int dummy; } ;


 scalar_t__ fdt_load_dtb_file (char const*) ;
 int fdt_platform_load_from_ubenv (char*) ;
 char* getenv (char*) ;
 int printf (char*,char const*) ;
 char* ub_env_get (char*) ;

int
fdt_platform_load_dtb(void)
{
 struct fdt_header *hdr;
 const char *s;
 char *p;
 int rv;







 if ((rv = fdt_platform_load_from_ubenv("fdt_addr_r")) == 0)
  goto exit;
 if ((rv = fdt_platform_load_from_ubenv("fdt_addr")) == 0)
  goto exit;
 if ((rv = fdt_platform_load_from_ubenv("fdtaddr")) == 0)
  goto exit;

 rv = 1;




 s = getenv("fdt_file");
 if (s == ((void*)0))
  s = ub_env_get("fdtfile");
 if (s == ((void*)0))
  s = ub_env_get("fdt_file");
 if (s != ((void*)0) && *s != '\0') {
  if (fdt_load_dtb_file(s) == 0) {
   printf("Loaded DTB from file '%s'.\n", s);
   rv = 0;
   goto exit;
  }
 }

exit:
 return (rv);
}
