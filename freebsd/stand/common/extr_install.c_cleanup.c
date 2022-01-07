
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;


 int free (int ******) ;
 int ****** inst_kernel ;
 int ****** inst_loader_rc ;
 int ****** inst_modules ;
 int ****** inst_rootfs ;
 int pkgfs_cleanup () ;

__attribute__((used)) static void
cleanup(void)
{
 u_int i;

 if (inst_kernel != ((void*)0)) {
  free(inst_kernel);
  inst_kernel = ((void*)0);
 }
 if (inst_modules != ((void*)0)) {
  i = 0;
  while (inst_modules[i] != ((void*)0))
   free(inst_modules[i++]);
  free(inst_modules);
  inst_modules = ((void*)0);
 }
 if (inst_rootfs != ((void*)0)) {
  free(inst_rootfs);
  inst_rootfs = ((void*)0);
 }
 if (inst_loader_rc != ((void*)0)) {
  free(inst_loader_rc);
  inst_loader_rc = ((void*)0);
 }
 pkgfs_cleanup();
}
