
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct preloaded_file {size_t f_loader; } ;
struct fs_ops {int dummy; } ;
typedef int buf ;
struct TYPE_5__ {int (* l_exec ) (struct preloaded_file*) ;} ;
struct TYPE_4__ {scalar_t__ s_addr; } ;


 int CMD_ERROR ;
 int INADDR_NONE ;
 int O_RDONLY ;
 int cleanup () ;
 int close (int) ;
 char* command_errmsg ;
 struct fs_ops dosfs_fsops ;
 int errno ;
 int * exclusive_file_system ;
 struct preloaded_file* file_findfile (int *,int *) ;
 TYPE_3__** file_formats ;
 int * file_loadraw (char*,char*,int) ;
 char* getenv (char*) ;
 scalar_t__ htonl (int ) ;
 scalar_t__ inet_addr (char*) ;
 char* inet_ntoa (TYPE_1__) ;
 char* inst_kernel ;
 char* inst_loader_rc ;
 char** inst_modules ;
 char* inst_rootfs ;
 int inter_include (char*) ;
 int mod_loadkld (char*,int ,int *) ;
 int open (char*,int ) ;
 int pkgfs_init (char*,struct fs_ops*) ;
 int read_metatags (int) ;
 TYPE_1__ servip ;
 int setenv (char*,char*,int) ;
 int sprintf (char*,char*,char const*,...) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char const*) ;
 int strncasecmp (char*,char*,int) ;
 char* strstr (char*,char*) ;
 int stub1 (struct preloaded_file*) ;
 struct fs_ops tftp_fsops ;
 int unload () ;
 int unsetenv (char*) ;

__attribute__((used)) static int
install(char *pkgname)
{
 static char buf[256];
 struct fs_ops *proto;
 struct preloaded_file *fp;
 char *s, *currdev;
 const char *devname;
 int error, fd, i, local;

 s = strstr(pkgname, "://");
 if (s == ((void*)0))
  goto invalid_url;

 i = s - pkgname;
 if (i == 4 && !strncasecmp(pkgname, "tftp", i)) {
  devname = "net0";
  proto = &tftp_fsops;
  local = 0;
 } else if (i == 4 && !strncasecmp(pkgname, "file", i)) {
  currdev = getenv("currdev");
  if (currdev != ((void*)0) && strcmp(currdev, "pxe0:") == 0) {
   devname = "pxe0";
   proto = ((void*)0);
  } else {
   devname = "disk1";
   proto = &dosfs_fsops;
  }
  local = 1;
 } else
  goto invalid_url;

 s += 3;
 if (*s == '\0')
  goto invalid_url;

 if (*s != '/' ) {
  if (local)
   goto invalid_url;

  pkgname = strchr(s, '/');
  if (pkgname == ((void*)0))
   goto invalid_url;

  *pkgname = '\0';
  servip.s_addr = inet_addr(s);
  if (servip.s_addr == htonl(INADDR_NONE))
   goto invalid_url;

  setenv("serverip", inet_ntoa(servip), 1);

  *pkgname = '/';
 } else
  pkgname = s;

 if (strlen(devname) + strlen(pkgname) + 2 > sizeof(buf)) {
  command_errmsg = "package name too long";
  return (CMD_ERROR);
 }
 sprintf(buf, "%s:%s", devname, pkgname);
 setenv("install_package", buf, 1);

 error = pkgfs_init(buf, proto);
 if (error) {
  command_errmsg = "cannot open package";
  goto fail;
 }





 unload();
 unsetenv("vfs.root.mountfrom");




 fd = open("/metatags", O_RDONLY);
 if (fd != -1) {
  error = read_metatags(fd);
  close(fd);
  if (error) {
   command_errmsg = "cannot load metatags";
   goto fail;
  }
 }

 s = (inst_kernel == ((void*)0)) ? "/kernel" : inst_kernel;
 error = mod_loadkld(s, 0, ((void*)0));
 if (error) {
  command_errmsg = "cannot load kernel from package";
  goto fail;
 }


 s = (inst_loader_rc == ((void*)0)) ? "/loader.rc" : inst_loader_rc;
 fd = open(s, O_RDONLY);
 if (fd != -1) {
  close(fd);
  error = inter_include(s);
  if (error == CMD_ERROR)
   goto fail;
 }

 i = 0;
 while (inst_modules != ((void*)0) && inst_modules[i] != ((void*)0)) {
  error = mod_loadkld(inst_modules[i], 0, ((void*)0));
  if (error) {
   command_errmsg = "cannot load module(s) from package";
   goto fail;
  }
  i++;
 }

 s = (inst_rootfs == ((void*)0)) ? "/install.iso" : inst_rootfs;
 if (file_loadraw(s, "mfs_root", 1) == ((void*)0)) {
  error = errno;
  command_errmsg = "cannot load root file system";
  goto fail;
 }

 cleanup();

 fp = file_findfile(((void*)0), ((void*)0));
 if (fp != ((void*)0))
  file_formats[fp->f_loader]->l_exec(fp);
 error = CMD_ERROR;
 command_errmsg = "unable to start installation";

 fail:
 sprintf(buf, "%s (error %d)", command_errmsg, error);
 cleanup();
 unload();
 exclusive_file_system = ((void*)0);
 command_errmsg = buf;
 return (CMD_ERROR);

 invalid_url:
 command_errmsg = "invalid URL";
 return (CMD_ERROR);
}
