
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* PATH_LOADER ;
 scalar_t__ bootdev ;
 char* bootpath ;
 int chosenh ;
 scalar_t__ domount (char*,int) ;
 int load (char const*) ;
 int memcpy (char*,char*,int) ;
 int ofw_close (scalar_t__) ;
 int ofw_setprop (int ,char*,char*,int) ;
 int panic (char*) ;
 int printf (char*,char*,...) ;
 int usage () ;

int
main(int ac, char **av)
{
 const char *path;
 char bootpath_full[255];
 int i, len;

 path = PATH_LOADER;
 for (i = 0; i < ac; i++) {
  switch (av[i][0]) {
  case '-':
   switch (av[i][1]) {
   default:
    usage();
   }
   break;
  default:
   path = av[i];
   break;
  }
 }

 printf(" \n>> FreeBSD/powerpc Open Firmware boot block\n"
 "   Boot path:   %s\n"
 "   Boot loader: %s\n", bootpath, path);

 len = 0;
 while (bootpath[len] != '\0') len++;

 memcpy(bootpath_full,bootpath,len+1);

 if (bootpath_full[len-1] != ':') {

  if (domount(bootpath_full,1) == 0)
   goto out;


  if (bootdev > 0)
   ofw_close(bootdev);
  bootpath_full[len] = ':';
  len += 1;
 }


 for (i = 0; i < 16; i++) {
  if (i < 10) {
   bootpath_full[len] = i + '0';
   bootpath_full[len+1] = '\0';
  } else {
   bootpath_full[len] = '1';
   bootpath_full[len+1] = i - 10 + '0';
   bootpath_full[len+2] = '\0';
  }

  if (domount(bootpath_full,1) >= 0)
   break;

  if (bootdev > 0)
   ofw_close(bootdev);
 }

 if (i >= 16)
  panic("domount");

out:
 printf("   Boot volume:   %s\n",bootpath_full);
 ofw_setprop(chosenh, "bootargs", bootpath_full, len+2);
 load(path);
 return (1);
}
