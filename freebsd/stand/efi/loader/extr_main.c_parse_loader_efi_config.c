
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; } ;
typedef int pdinfo_t ;
typedef int EFI_HANDLE ;


 int O_RDONLY ;
 int boot_parse_cmdline (char*) ;
 int close (int) ;
 int * efiblk_get_pdinfo_by_handle (int ) ;
 int free (char*) ;
 char* malloc (int) ;
 int open (char const*,int ) ;
 int read (int,char*,int) ;
 int set_currdev_pdinfo (int *) ;
 scalar_t__ stat (char const*,struct stat*) ;

void
parse_loader_efi_config(EFI_HANDLE h, const char *env_fn)
{
 pdinfo_t *dp;
 struct stat st;
 int fd = -1;
 char *env = ((void*)0);

 dp = efiblk_get_pdinfo_by_handle(h);
 if (dp == ((void*)0))
  return;
 set_currdev_pdinfo(dp);
 if (stat(env_fn, &st) != 0)
  return;
 fd = open(env_fn, O_RDONLY);
 if (fd == -1)
  return;
 env = malloc(st.st_size + 1);
 if (env == ((void*)0))
  goto out;
 if (read(fd, env, st.st_size) != st.st_size)
  goto out;
 env[st.st_size] = '\0';
 boot_parse_cmdline(env);
out:
 free(env);
 close(fd);
}
