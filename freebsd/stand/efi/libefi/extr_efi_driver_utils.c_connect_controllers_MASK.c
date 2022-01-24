#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int UINTN ;
struct TYPE_2__ {scalar_t__ (* LocateHandle ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* ConnectController ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ;} ;
typedef  scalar_t__ EFI_STATUS ;
typedef  int /*<<< orphan*/  EFI_HANDLE ;
typedef  int /*<<< orphan*/  EFI_GUID ;

/* Variables and functions */
 TYPE_1__* BS ; 
 int /*<<< orphan*/  ByProtocol ; 
 scalar_t__ EFI_BUFFER_TOO_SMALL ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

EFI_STATUS
FUNC6(EFI_GUID *filter)
{
        EFI_STATUS status;
        EFI_HANDLE *handles;
        UINTN nhandles, i, hsize;

        nhandles = 0;
        hsize = 0;
        status = BS->LocateHandle(ByProtocol, filter, NULL,
                     &hsize, NULL);

        if(status != EFI_BUFFER_TOO_SMALL) {
                return (status);
        }

        handles = FUNC2(hsize);
        nhandles = hsize / sizeof(EFI_HANDLE);

        status = BS->LocateHandle(ByProtocol, filter, NULL,
                     &hsize, handles);

        if(FUNC0(status)) {
                return (status);
        }

        for(i = 0; i < nhandles; i++) {
                BS->ConnectController(handles[i], NULL, NULL, true);
        }

        FUNC1(handles);

        return (status);
}