
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_driver_ndis_data {scalar_t__ ndisuio; } ;
typedef int DWORD ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFile (int ,int,int ,int *,int ,int,scalar_t__) ;
 int DeviceIoControl (scalar_t__,int ,int *,int ,int *,int ,int *,int *) ;
 int FILE_ATTRIBUTE_NORMAL ;
 int FILE_FLAG_OVERLAPPED ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 scalar_t__ GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int IOCTL_NDISUIO_BIND_WAIT ;
 int MSG_ERROR ;
 int NDISUIO_DEVICE_NAME ;
 int OPEN_EXISTING ;
 scalar_t__ driver_ndis_ndisuio_handle ;
 int wpa_printf (int ,char*,int) ;

__attribute__((used)) static int wpa_driver_ndis_adapter_init(struct wpa_driver_ndis_data *drv)
{
 return 0;

}
