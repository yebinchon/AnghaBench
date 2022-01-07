
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hEvent; } ;
struct l2_packet_data {TYPE_1__ rx_overlapped; int rx_written; int rx_buf; int rx_avail; } ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_IO_PENDING ;
 scalar_t__ GetLastError () ;
 int MSG_DEBUG ;
 int ReadFile (int ,int ,int,int *,TYPE_1__*) ;
 int driver_ndis_get_ndisuio_handle () ;
 int l2_packet_callback (struct l2_packet_data*) ;
 int os_memset (TYPE_1__*,int ,int) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int l2_ndisuio_start_read(struct l2_packet_data *l2, int recursive)
{
 os_memset(&l2->rx_overlapped, 0, sizeof(l2->rx_overlapped));
 l2->rx_overlapped.hEvent = l2->rx_avail;
 if (!ReadFile(driver_ndis_get_ndisuio_handle(), l2->rx_buf,
        sizeof(l2->rx_buf), &l2->rx_written, &l2->rx_overlapped))
 {
  DWORD err = GetLastError();
  if (err != ERROR_IO_PENDING) {
   wpa_printf(MSG_DEBUG, "L2(NDISUIO): ReadFile failed: "
       "%d", (int) err);
   return -1;
  }




 } else {
  wpa_printf(MSG_DEBUG, "L2(NDISUIO): ReadFile returned data "
      "without wait for completion");
  if (!recursive)
   l2_packet_callback(l2);
 }

 return 0;
}
