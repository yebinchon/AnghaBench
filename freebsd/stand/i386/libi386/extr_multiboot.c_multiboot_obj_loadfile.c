
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct preloaded_file {char* f_name; scalar_t__ f_size; scalar_t__ f_addr; } ;
struct kernel_module {int dummy; } ;


 int EFTYPE ;
 int EINVAL ;
 scalar_t__ METADATA_RESV_SIZE (int) ;
 int PAGE_SIZE ;
 int elf64_load_modmetadata (struct preloaded_file*,scalar_t__) ;
 int elf64_obj_loadfile (char*,int ,struct preloaded_file**) ;
 struct preloaded_file* file_findfile (int *,char*) ;
 struct preloaded_file* file_loadraw (char*,char*,int ) ;
 int num_modules (struct preloaded_file*) ;
 int printf (char*,char*,...) ;
 scalar_t__ roundup (scalar_t__,int ) ;
 int setenv (char*,char*,int) ;

__attribute__((used)) static int
multiboot_obj_loadfile(char *filename, uint64_t dest,
    struct preloaded_file **result)
{
 struct preloaded_file *mfp, *kfp, *rfp;
 struct kernel_module *kmp;
 int error, mod_num;


 mfp = file_findfile(((void*)0), "elf multiboot kernel");
 if (mfp == ((void*)0))
  return (EFTYPE);





 kfp = file_findfile(((void*)0), "elf kernel");
 if (kfp == ((void*)0)) {





  rfp = file_loadraw(filename, "elf kernel", 0);
  if (rfp == ((void*)0)) {
   printf(
   "Unable to load %s as a multiboot payload kernel\n",
   filename);
   return (EINVAL);
  }


  setenv("kernelname", filename, 1);
  error = elf64_load_modmetadata(rfp, rfp->f_addr + rfp->f_size);
  if (error) {
   printf("Unable to load kernel %s metadata error: %d\n",
       rfp->f_name, error);
   return (EINVAL);
  }
  mod_num = num_modules(rfp);
  rfp->f_size = roundup(rfp->f_size, PAGE_SIZE);
  rfp->f_size += METADATA_RESV_SIZE(mod_num);
  *result = rfp;
 } else {

  error = elf64_obj_loadfile(filename, dest, result);
  if (error != 0) {
   printf("Unable to load %s as an object file, error: %d",
       filename, error);
   return (error);
  }
 }

 return (0);
}
