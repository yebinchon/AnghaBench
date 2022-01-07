
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 int setenv (char*,char*,int) ;
 char* strchr (char*,char) ;
 char* strdup (char const*) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 char* strrchr (char*,char) ;
 int zfs_bootenv_initial (char*) ;

void
init_zfs_bootenv(const char *currdev_in)
{
 char *beroot, *currdev;
 int currdev_len;

 currdev = ((void*)0);
 currdev_len = strlen(currdev_in);
 if (currdev_len == 0)
  return;
 if (strncmp(currdev_in, "zfs:", 4) != 0)
  return;
 currdev = strdup(currdev_in);
 if (currdev == ((void*)0))
  return;

 currdev[currdev_len - 1] = '\0';
 setenv("zfs_be_active", currdev, 1);
 setenv("zfs_be_currpage", "1", 1);

 beroot = strrchr(currdev, '/');
 if (beroot != ((void*)0))
  beroot[0] = '\0';
 beroot = strchr(currdev, ':') + 1;
 setenv("zfs_be_root", beroot, 1);
 zfs_bootenv_initial(beroot);
 free(currdev);
}
