
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct l2_packet_data {int rx_written; int rx_overlapped; int rx_avail; } ;
struct TYPE_2__ {int refcount; int rx_processed; struct l2_packet_data** l2; } ;


 int FALSE ;
 scalar_t__ GetLastError () ;
 int GetOverlappedResult (int ,int *,int *,int ) ;
 int MSG_DEBUG ;
 int ResetEvent (int ) ;
 int SetEvent (int ) ;
 int driver_ndis_get_ndisuio_handle () ;
 TYPE_1__* l2_ndisuio_global ;
 int l2_packet_callback (struct l2_packet_data*) ;
 int wpa_printf (int ,char*,int) ;

__attribute__((used)) static void l2_packet_rx_event(void *eloop_data, void *user_data)
{
 struct l2_packet_data *l2 = eloop_data;

 if (l2_ndisuio_global)
  l2 = l2_ndisuio_global->l2[l2_ndisuio_global->refcount - 1];

 ResetEvent(l2->rx_avail);


 if (!GetOverlappedResult(driver_ndis_get_ndisuio_handle(),
     &l2->rx_overlapped, &l2->rx_written, FALSE)) {
  wpa_printf(MSG_DEBUG, "L2(NDISUIO): GetOverlappedResult "
      "failed: %d", (int) GetLastError());
  return;
 }


 l2_packet_callback(l2);




}
