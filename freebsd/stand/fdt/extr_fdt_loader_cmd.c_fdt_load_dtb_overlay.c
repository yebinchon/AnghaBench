
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct preloaded_file {int f_addr; } ;
struct fdt_header {int dummy; } ;
typedef int header ;


 int COPYOUT (int ,struct fdt_header*,int) ;
 int FDT_ERR_NOTFOUND ;
 int debugf (char*,char const*) ;
 int fdt_check_header (struct fdt_header*) ;
 int file_discard (struct preloaded_file*) ;
 struct preloaded_file* file_loadraw (char const*,char*,int) ;

__attribute__((used)) static int
fdt_load_dtb_overlay(const char * filename)
{
 struct preloaded_file *bfp;
 struct fdt_header header;
 int err;

 debugf("fdt_load_dtb_overlay(%s)\n", filename);







 if ((bfp = file_loadraw(filename, "dtbo", 1)) == ((void*)0))
  return (FDT_ERR_NOTFOUND);

 COPYOUT(bfp->f_addr, &header, sizeof(header));
 err = fdt_check_header(&header);

 if (err < 0) {
  file_discard(bfp);
  return (err);
 }

 return (0);
}
