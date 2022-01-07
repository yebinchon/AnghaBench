
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_driver_ndis_data {int * adapter; scalar_t__* ifname; int ndisuio; } ;
typedef int ifname ;
typedef int WCHAR ;
typedef int DWORD ;


 int CloseHandle (int ) ;
 int DeviceIoControl (int ,int ,int*,size_t,int *,int ,int *,int *) ;
 scalar_t__ GetLastError () ;
 int INVALID_HANDLE_VALUE ;
 int IOCTL_NDISUIO_OPEN_DEVICE ;
 int MAX_NDIS_DEVICE_NAME_LEN ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int * PacketOpenAdapter (char*) ;
 int os_snprintf (char*,int,char*,scalar_t__*) ;
 size_t os_strlen (scalar_t__*) ;
 int wpa_hexdump_ascii (int ,char*,int const*,size_t) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int wpa_driver_ndis_adapter_open(struct wpa_driver_ndis_data *drv)
{
 char ifname[128];
 os_snprintf(ifname, sizeof(ifname), "\\Device\\NPF_%s", drv->ifname);
 drv->adapter = PacketOpenAdapter(ifname);
 if (drv->adapter == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "NDIS: PacketOpenAdapter failed for "
      "'%s'", ifname);
  return -1;
 }
 return 0;

}
