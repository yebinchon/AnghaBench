
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PATH_MAX ;
 int bfd_get_filename (scalar_t__) ;
 scalar_t__ check_kld_path (char*,size_t) ;
 char* dirname (int ) ;
 scalar_t__ exec_bfd ;
 int make_cleanup (int ,char*) ;
 scalar_t__ module_path_addr ;
 int snprintf (char*,size_t,char*,char*,char*) ;
 char* strsep (char**,char*) ;
 int target_read_string (scalar_t__,char**,int ,int*) ;
 int xfree ;

__attribute__((used)) static int
find_kld_path (char *filename, char *path, size_t path_size)
{
 char *module_path;
 char *kernel_dir, *module_dir, *cp;
 int error;

 if (exec_bfd) {
  kernel_dir = dirname(bfd_get_filename(exec_bfd));
  if (kernel_dir != ((void*)0)) {
   snprintf(path, path_size, "%s/%s", kernel_dir,
       filename);
   if (check_kld_path(path, path_size))
    return (1);
  }
 }
 if (module_path_addr != 0) {
  target_read_string(module_path_addr, &module_path, PATH_MAX,
      &error);
  if (error == 0) {
   make_cleanup(xfree, module_path);
   cp = module_path;
   while ((module_dir = strsep(&cp, ";")) != ((void*)0)) {
    snprintf(path, path_size, "%s/%s", module_dir,
        filename);
    if (check_kld_path(path, path_size))
     return (1);
   }
  }
 }
 return (0);
}
