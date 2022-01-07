
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINTN ;
struct TYPE_2__ {scalar_t__ (* LocateHandle ) (int ,int *,int *,int*,int *) ;int (* ConnectController ) (int ,int *,int *,int) ;} ;
typedef scalar_t__ EFI_STATUS ;
typedef int EFI_HANDLE ;
typedef int EFI_GUID ;


 TYPE_1__* BS ;
 int ByProtocol ;
 scalar_t__ EFI_BUFFER_TOO_SMALL ;
 scalar_t__ EFI_ERROR (scalar_t__) ;
 int free (int *) ;
 int * malloc (int) ;
 scalar_t__ stub1 (int ,int *,int *,int*,int *) ;
 scalar_t__ stub2 (int ,int *,int *,int*,int *) ;
 int stub3 (int ,int *,int *,int) ;

EFI_STATUS
connect_controllers(EFI_GUID *filter)
{
        EFI_STATUS status;
        EFI_HANDLE *handles;
        UINTN nhandles, i, hsize;

        nhandles = 0;
        hsize = 0;
        status = BS->LocateHandle(ByProtocol, filter, ((void*)0),
                     &hsize, ((void*)0));

        if(status != EFI_BUFFER_TOO_SMALL) {
                return (status);
        }

        handles = malloc(hsize);
        nhandles = hsize / sizeof(EFI_HANDLE);

        status = BS->LocateHandle(ByProtocol, filter, ((void*)0),
                     &hsize, handles);

        if(EFI_ERROR(status)) {
                return (status);
        }

        for(i = 0; i < nhandles; i++) {
                BS->ConnectController(handles[i], ((void*)0), ((void*)0), 1);
        }

        free(handles);

        return (status);
}
