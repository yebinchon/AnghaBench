
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int devhandle; int devpath; } ;
typedef TYPE_1__ dev_info_t ;
struct TYPE_10__ {scalar_t__ (* load ) (int ,TYPE_1__*,void**,size_t*) ;char* name; } ;
typedef TYPE_2__ boot_module_t ;
struct TYPE_12__ {scalar_t__ (* LoadImage ) (int ,int ,int ,void*,size_t,int *) ;scalar_t__ (* StartImage ) (int ,int *,int *) ;} ;
struct TYPE_11__ {size_t LoadOptionsSize; char* LoadOptions; int DeviceHandle; } ;
typedef scalar_t__ EFI_STATUS ;
typedef TYPE_3__ EFI_LOADED_IMAGE ;
typedef int EFI_HANDLE ;


 TYPE_8__* BS ;
 int DPRINTF (char*,...) ;
 int DSTALL (int) ;
 int EFI_ERROR_CODE (scalar_t__) ;
 scalar_t__ EFI_NOT_FOUND ;
 scalar_t__ EFI_SUCCESS ;
 int IH ;
 int LoadedImageGUID ;
 scalar_t__ OpenProtocolByHandle (int ,int *,void**) ;
 int PATH_CONFIG ;
 int PATH_DOTCONFIG ;
 int PATH_LOADER_EFI ;
 int TRUE ;
 int efi_devpath_last_node (int ) ;
 int free (void*) ;
 char* malloc (size_t) ;
 int memcpy (char*,void*,size_t) ;
 int printf (char*,char*,...) ;
 scalar_t__ stub1 (int ,TYPE_1__*,void**,size_t*) ;
 scalar_t__ stub2 (int ,TYPE_1__*,void**,size_t*) ;
 scalar_t__ stub3 (int ,int ,int ,void*,size_t,int *) ;
 scalar_t__ stub4 (int ,int *,int *) ;

EFI_STATUS
try_boot(const boot_module_t *mod, dev_info_t *dev, void *loaderbuf, size_t loadersize)
{
 size_t bufsize, cmdsize;
 void *buf;
 char *cmd;
 EFI_HANDLE loaderhandle;
 EFI_LOADED_IMAGE *loaded_image;
 EFI_STATUS status;
 cmd = ((void*)0);
 cmdsize = 0;
 status = mod->load(PATH_DOTCONFIG, dev, &buf, &bufsize);
 if (status == EFI_NOT_FOUND)
  status = mod->load(PATH_CONFIG, dev, &buf, &bufsize);
 if (status == EFI_SUCCESS) {
  cmdsize = bufsize + 1;
  cmd = malloc(cmdsize);
  if (cmd == ((void*)0))
   goto errout;
  memcpy(cmd, buf, bufsize);
  cmd[bufsize] = '\0';
  free(buf);
  buf = ((void*)0);
 }

 if ((status = BS->LoadImage(TRUE, IH, efi_devpath_last_node(dev->devpath),
     loaderbuf, loadersize, &loaderhandle)) != EFI_SUCCESS) {
  printf("Failed to load image provided by %s, size: %zu, (%lu)\n",
       mod->name, loadersize, EFI_ERROR_CODE(status));
  goto errout;
 }

 status = OpenProtocolByHandle(loaderhandle, &LoadedImageGUID,
     (void **)&loaded_image);
 if (status != EFI_SUCCESS) {
  printf("Failed to query LoadedImage provided by %s (%lu)\n",
      mod->name, EFI_ERROR_CODE(status));
  goto errout;
 }

 if (cmd != ((void*)0))
  printf("    command args: %s\n", cmd);

 loaded_image->DeviceHandle = dev->devhandle;
 loaded_image->LoadOptionsSize = cmdsize;
 loaded_image->LoadOptions = cmd;

 DPRINTF("Starting '%s' in 5 seconds...", PATH_LOADER_EFI);
 DSTALL(1000000);
 DPRINTF(".");
 DSTALL(1000000);
 DPRINTF(".");
 DSTALL(1000000);
 DPRINTF(".");
 DSTALL(1000000);
 DPRINTF(".");
 DSTALL(1000000);
 DPRINTF(".\n");

 if ((status = BS->StartImage(loaderhandle, ((void*)0), ((void*)0))) !=
     EFI_SUCCESS) {
  printf("Failed to start image provided by %s (%lu)\n",
      mod->name, EFI_ERROR_CODE(status));
  loaded_image->LoadOptionsSize = 0;
  loaded_image->LoadOptions = ((void*)0);
 }

errout:
 if (cmd != ((void*)0))
  free(cmd);
 if (buf != ((void*)0))
  free(buf);
 if (loaderbuf != ((void*)0))
  free(loaderbuf);

 return (status);
}
