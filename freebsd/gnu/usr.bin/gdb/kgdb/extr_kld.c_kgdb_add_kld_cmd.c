
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int path ;
typedef int CORE_ADDR ;


 int PATH_MAX ;
 int check_kld_path (char*,int) ;
 int error (char*) ;
 int exec_bfd ;
 int find_kld_address (char*,int *) ;
 int find_kld_path (char*,char*,int) ;
 int load_kld (char*,int ,int) ;
 int reinit_frame_cache () ;
 int snprintf (char*,int,char*,char*) ;

__attribute__((used)) static void
kgdb_add_kld_cmd (char *arg, int from_tty)
{
 char path[PATH_MAX];
 CORE_ADDR base_addr;

 if (!exec_bfd)
  error("No kernel symbol file");


 snprintf(path, sizeof(path), "%s", arg);
 if (!check_kld_path(path, sizeof(path))) {





  if (!find_kld_path(arg, path, sizeof(path))) {
   error("Unable to locate kld");
   return;
  }
 }

 if (!find_kld_address(arg, &base_addr)) {
  error("Unable to find kld in kernel");
  return;
 }

 load_kld(path, base_addr, from_tty);

 reinit_frame_cache();
}
