
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_13__ ;
typedef struct TYPE_14__ TYPE_11__ ;


typedef int VOID ;
typedef size_t UINTN ;
struct TYPE_19__ {int (* SetMode ) (TYPE_4__*,int ) ;} ;
struct TYPE_18__ {int DeviceHandle; int * FilePath; } ;
struct TYPE_17__ {TYPE_1__* ConOut; int RuntimeServices; TYPE_13__* BootServices; } ;
struct TYPE_16__ {int (* ClearScreen ) (TYPE_1__*) ;int (* EnableCursor ) (TYPE_1__*,int ) ;int (* SetMode ) (TYPE_1__*,int ) ;int (* Reset ) (TYPE_1__*,int ) ;} ;
struct TYPE_15__ {scalar_t__ (* LocateProtocol ) (int *,int *,int **) ;scalar_t__ (* LocateHandle ) (int ,int *,int *,size_t*,int *) ;} ;
struct TYPE_14__ {char* name; int (* init ) () ;} ;
typedef TYPE_1__ SIMPLE_TEXT_OUTPUT_INTERFACE ;
typedef TYPE_2__ EFI_SYSTEM_TABLE ;
typedef scalar_t__ EFI_STATUS ;
typedef TYPE_3__ EFI_LOADED_IMAGE ;
typedef int EFI_HANDLE ;
typedef int EFI_DEVICE_PATH ;
typedef TYPE_4__ EFI_CONSOLE_CONTROL_PROTOCOL ;
typedef char CHAR16 ;


 TYPE_13__* BS ;
 int BlockIoProtocolGUID ;
 int ByProtocol ;
 int ConsoleControlGUID ;
 int DPRINTF (char*,int ) ;
 int DevicePathGUID ;
 int EFI_ERROR_CODE (scalar_t__) ;
 scalar_t__ EFI_LOAD_ERROR ;
 int EFI_OUT_OF_RESOURCES ;
 scalar_t__ EFI_SUCCESS ;
 int EfiConsoleControlScreenText ;
 int IH ;
 int LoadedImageGUID ;
 scalar_t__ OpenProtocolByHandle (int ,int *,void**) ;
 char* PATH_LOADER_EFI ;
 int RS ;
 TYPE_2__* ST ;
 int TRUE ;
 TYPE_11__** boot_modules ;
 int choice_protocol (int *,size_t,int *) ;
 char* efi_devpath_name (int *) ;
 int efi_free_devpath_name (char*) ;
 int efi_panic (scalar_t__,char*,...) ;
 int efi_setenv_freebsd_wcs (char*,char*) ;
 int * malloc (size_t) ;
 size_t num_boot_modules ;
 int printf (char*,...) ;
 int putchar (char) ;
 scalar_t__ stub1 (int *,int *,int **) ;
 int stub2 (TYPE_4__*,int ) ;
 int stub3 (TYPE_1__*,int ) ;
 int stub4 (TYPE_1__*,int ) ;
 int stub5 (TYPE_1__*,int ) ;
 int stub6 (TYPE_1__*) ;
 int stub7 () ;
 scalar_t__ stub8 (int ,int *,int *,size_t*,int *) ;
 scalar_t__ stub9 (int ,int *,int *,size_t*,int *) ;

EFI_STATUS
efi_main(EFI_HANDLE Ximage, EFI_SYSTEM_TABLE *Xsystab)
{
 EFI_HANDLE *handles;
 EFI_LOADED_IMAGE *img;
 EFI_DEVICE_PATH *imgpath;
 EFI_STATUS status;
 EFI_CONSOLE_CONTROL_PROTOCOL *ConsoleControl = ((void*)0);
 SIMPLE_TEXT_OUTPUT_INTERFACE *conout = ((void*)0);
 UINTN i, hsize, nhandles;
 CHAR16 *text;


 ST = Xsystab;
 IH = Ximage;
 BS = ST->BootServices;
 RS = ST->RuntimeServices;


 status = BS->LocateProtocol(&ConsoleControlGUID, ((void*)0),
     (VOID **)&ConsoleControl);
 if (status == EFI_SUCCESS)
  (void)ConsoleControl->SetMode(ConsoleControl,
      EfiConsoleControlScreenText);




 conout = ST->ConOut;
 conout->Reset(conout, TRUE);

 conout->SetMode(conout, 0);
 conout->EnableCursor(conout, TRUE);
 conout->ClearScreen(conout);

 printf("\n>> FreeBSD EFI boot block\n");
 printf("   Loader path: %s\n\n", PATH_LOADER_EFI);
 printf("   Initializing modules:");
 for (i = 0; i < num_boot_modules; i++) {
  printf(" %s", boot_modules[i]->name);
  if (boot_modules[i]->init != ((void*)0))
   boot_modules[i]->init();
 }
 putchar('\n');


 hsize = 0;
 BS->LocateHandle(ByProtocol, &BlockIoProtocolGUID, ((void*)0),
     &hsize, ((void*)0));
 handles = malloc(hsize);
 if (handles == ((void*)0))
  efi_panic(EFI_OUT_OF_RESOURCES, "Failed to allocate %d handles\n",
      hsize);
 status = BS->LocateHandle(ByProtocol, &BlockIoProtocolGUID,
     ((void*)0), &hsize, handles);
 if (status != EFI_SUCCESS)
  efi_panic(status, "Failed to get device handles\n");
 nhandles = hsize / sizeof(*handles);


 status = OpenProtocolByHandle(IH, &LoadedImageGUID, (void **)&img);
 imgpath = ((void*)0);
 if (status == EFI_SUCCESS) {
  text = efi_devpath_name(img->FilePath);
  if (text != ((void*)0)) {
   printf("   Load Path: %S\n", text);
   efi_setenv_freebsd_wcs("Boot1Path", text);
   efi_free_devpath_name(text);
  }

  status = OpenProtocolByHandle(img->DeviceHandle,
      &DevicePathGUID, (void **)&imgpath);
  if (status != EFI_SUCCESS) {
   DPRINTF("Failed to get image DevicePath (%lu)\n",
       EFI_ERROR_CODE(status));
  } else {
   text = efi_devpath_name(imgpath);
   if (text != ((void*)0)) {
    printf("   Load Device: %S\n", text);
    efi_setenv_freebsd_wcs("Boot1Dev", text);
    efi_free_devpath_name(text);
   }
  }
 }

 choice_protocol(handles, nhandles, imgpath);


 efi_panic(EFI_LOAD_ERROR, "No bootable partitions found!");
}
