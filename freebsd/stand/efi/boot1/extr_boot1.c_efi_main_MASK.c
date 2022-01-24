#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_13__ ;
typedef  struct TYPE_14__   TYPE_11__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
typedef  size_t UINTN ;
struct TYPE_19__ {int /*<<< orphan*/  (* SetMode ) (TYPE_4__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_18__ {int /*<<< orphan*/  DeviceHandle; int /*<<< orphan*/ * FilePath; } ;
struct TYPE_17__ {TYPE_1__* ConOut; int /*<<< orphan*/  RuntimeServices; TYPE_13__* BootServices; } ;
struct TYPE_16__ {int /*<<< orphan*/  (* ClearScreen ) (TYPE_1__*) ;int /*<<< orphan*/  (* EnableCursor ) (TYPE_1__*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* SetMode ) (TYPE_1__*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* Reset ) (TYPE_1__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_15__ {scalar_t__ (* LocateProtocol ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ;scalar_t__ (* LocateHandle ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t*,int /*<<< orphan*/ *) ;} ;
struct TYPE_14__ {char* name; int /*<<< orphan*/  (* init ) () ;} ;
typedef  TYPE_1__ SIMPLE_TEXT_OUTPUT_INTERFACE ;
typedef  TYPE_2__ EFI_SYSTEM_TABLE ;
typedef  scalar_t__ EFI_STATUS ;
typedef  TYPE_3__ EFI_LOADED_IMAGE ;
typedef  int /*<<< orphan*/  EFI_HANDLE ;
typedef  int /*<<< orphan*/  EFI_DEVICE_PATH ;
typedef  TYPE_4__ EFI_CONSOLE_CONTROL_PROTOCOL ;
typedef  char CHAR16 ;

/* Variables and functions */
 TYPE_13__* BS ; 
 int /*<<< orphan*/  BlockIoProtocolGUID ; 
 int /*<<< orphan*/  ByProtocol ; 
 int /*<<< orphan*/  ConsoleControlGUID ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DevicePathGUID ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ EFI_LOAD_ERROR ; 
 int /*<<< orphan*/  EFI_OUT_OF_RESOURCES ; 
 scalar_t__ EFI_SUCCESS ; 
 int /*<<< orphan*/  EfiConsoleControlScreenText ; 
 int /*<<< orphan*/  IH ; 
 int /*<<< orphan*/  LoadedImageGUID ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 char* PATH_LOADER_EFI ; 
 int /*<<< orphan*/  RS ; 
 TYPE_2__* ST ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_11__** boot_modules ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC8 (size_t) ; 
 size_t num_boot_modules ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t*,int /*<<< orphan*/ *) ; 

EFI_STATUS
FUNC20(EFI_HANDLE Ximage, EFI_SYSTEM_TABLE *Xsystab)
{
	EFI_HANDLE *handles;
	EFI_LOADED_IMAGE *img;
	EFI_DEVICE_PATH *imgpath;
	EFI_STATUS status;
	EFI_CONSOLE_CONTROL_PROTOCOL *ConsoleControl = NULL;
	SIMPLE_TEXT_OUTPUT_INTERFACE *conout = NULL;
	UINTN i, hsize, nhandles;
	CHAR16 *text;

	/* Basic initialization*/
	ST = Xsystab;
	IH = Ximage;
	BS = ST->BootServices;
	RS = ST->RuntimeServices;

	/* Set up the console, so printf works. */
	status = BS->LocateProtocol(&ConsoleControlGUID, NULL,
	    (VOID **)&ConsoleControl);
	if (status == EFI_SUCCESS)
		(void)ConsoleControl->SetMode(ConsoleControl,
		    EfiConsoleControlScreenText);
	/*
	 * Reset the console enable the cursor. Later we'll choose a better
	 * console size through GOP/UGA.
	 */
	conout = ST->ConOut;
	conout->Reset(conout, TRUE);
	/* Explicitly set conout to mode 0, 80x25 */
	conout->SetMode(conout, 0);
	conout->EnableCursor(conout, TRUE);
	conout->ClearScreen(conout);

	FUNC9("\n>> FreeBSD EFI boot block\n");
	FUNC9("   Loader path: %s\n\n", PATH_LOADER_EFI);
	FUNC9("   Initializing modules:");
	for (i = 0; i < num_boot_modules; i++) {
		FUNC9(" %s", boot_modules[i]->name);
		if (boot_modules[i]->init != NULL)
			boot_modules[i]->init();
	}
	FUNC10('\n');

	/* Fetch all the block I/O handles, we have to search through them later */
	hsize = 0;
	BS->LocateHandle(ByProtocol, &BlockIoProtocolGUID, NULL,
	    &hsize, NULL);
	handles = FUNC8(hsize);
	if (handles == NULL)
		FUNC6(EFI_OUT_OF_RESOURCES, "Failed to allocate %d handles\n",
		    hsize);
	status = BS->LocateHandle(ByProtocol, &BlockIoProtocolGUID,
	    NULL, &hsize, handles);
	if (status != EFI_SUCCESS)
		FUNC6(status, "Failed to get device handles\n");
	nhandles = hsize / sizeof(*handles);

	/* Determine the devpath of our image so we can prefer it. */
	status = FUNC2(IH, &LoadedImageGUID, (void **)&img);
	imgpath = NULL;
	if (status == EFI_SUCCESS) {
		text = FUNC4(img->FilePath);
		if (text != NULL) {
			FUNC9("   Load Path: %S\n", text);
			FUNC7("Boot1Path", text);
			FUNC5(text);
		}

		status = FUNC2(img->DeviceHandle,
		    &DevicePathGUID, (void **)&imgpath);
		if (status != EFI_SUCCESS) {
			FUNC0("Failed to get image DevicePath (%lu)\n",
			    FUNC1(status));
		} else {
			text = FUNC4(imgpath);
			if (text != NULL) {
				FUNC9("   Load Device: %S\n", text);
				FUNC7("Boot1Dev", text);
				FUNC5(text);
			}
		}
	}

	FUNC3(handles, nhandles, imgpath);

	/* If we get here, we're out of luck... */
	FUNC6(EFI_LOAD_ERROR, "No bootable partitions found!");
}