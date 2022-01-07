
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2_packet_data {size_t refcount; int rx_avail; int rx_processed; int ready_for_read; int stop_request; int rx_thread; int first_proto; int ** l2; } ;


 int CancelIo (int ) ;
 int CloseHandle (int ) ;
 int DeviceIoControl (int ,int ,int *,int ,int *,int ,int *,int *) ;
 scalar_t__ GetLastError () ;
 int INFINITE ;
 int IOCTL_CANCEL_READ ;
 int MSG_DEBUG ;
 int SetEvent (int ) ;
 int WaitForSingleObject (int ,int ) ;
 int driver_ndis_get_ndisuio_handle () ;
 int eloop_unregister_event (int ,int) ;
 struct l2_packet_data* l2_ndisuio_global ;
 int l2_ndisuio_set_ether_type (int ) ;
 int os_free (struct l2_packet_data*) ;
 int wpa_printf (int ,char*,...) ;

void l2_packet_deinit(struct l2_packet_data *l2)
{
 if (l2 == ((void*)0))
  return;

 if (l2_ndisuio_global) {
  l2_ndisuio_global->refcount--;
  l2_ndisuio_global->l2[l2_ndisuio_global->refcount] = ((void*)0);
  if (l2_ndisuio_global->refcount) {
   wpa_printf(MSG_DEBUG, "L2(NDISUIO): restore filtering "
       "ethertype to %04x",
       l2_ndisuio_global->first_proto);
   l2_ndisuio_set_ether_type(
    l2_ndisuio_global->first_proto);
   return;
  }
  os_free(l2_ndisuio_global);
  l2_ndisuio_global = ((void*)0);
 }


 CancelIo(driver_ndis_get_ndisuio_handle());


 eloop_unregister_event(l2->rx_avail, sizeof(l2->rx_avail));
 CloseHandle(l2->rx_avail);
 os_free(l2);
}
