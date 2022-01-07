
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_driver_ndis_data {scalar_t__ ndisuio; scalar_t__ adapter; } ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int PacketCloseAdapter (scalar_t__) ;
 scalar_t__ driver_ndis_ndisuio_handle ;

__attribute__((used)) static void wpa_driver_ndis_adapter_close(struct wpa_driver_ndis_data *drv)
{





 if (drv->adapter)
  PacketCloseAdapter(drv->adapter);

}
