
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int proto ;
typedef int USHORT ;
typedef int DWORD ;


 int DeviceIoControl (int ,int ,int *,int,int *,int ,int *,int *) ;
 scalar_t__ GetLastError () ;
 int IOCTL_NDISUIO_SET_ETHER_TYPE ;
 int MSG_ERROR ;
 int driver_ndis_get_ndisuio_handle () ;
 int htons (unsigned short) ;
 int wpa_printf (int ,char*,int) ;

__attribute__((used)) static int l2_ndisuio_set_ether_type(unsigned short protocol)
{
 USHORT proto = htons(protocol);
 DWORD written;

 if (!DeviceIoControl(driver_ndis_get_ndisuio_handle(),
        IOCTL_NDISUIO_SET_ETHER_TYPE, &proto,
        sizeof(proto), ((void*)0), 0, &written, ((void*)0))) {
  wpa_printf(MSG_ERROR, "L2(NDISUIO): "
      "IOCTL_NDISUIO_SET_ETHER_TYPE failed: %d",
      (int) GetLastError());
  return -1;
 }

 return 0;
}
