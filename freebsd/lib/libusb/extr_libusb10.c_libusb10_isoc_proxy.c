
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint32_t ;
typedef scalar_t__ uint16_t ;
struct libusb_transfer {scalar_t__ num_iso_packets; size_t actual_length; int endpoint; TYPE_1__* iso_packet_desc; int * buffer; } ;
struct libusb_super_transfer {int rem_len; } ;
struct libusb20_transfer {int dummy; } ;
struct TYPE_2__ {size_t length; int actual_length; } ;




 int LIBUSB_TRANSFER_COMPLETED ;
 int libusb10_complete_transfer (struct libusb20_transfer*,struct libusb_super_transfer*,int ) ;
 int libusb10_convert_error (int) ;
 int libusb10_submit_transfer_sub (int ,int ) ;
 size_t libusb20_tr_get_actual_length (struct libusb20_transfer*) ;
 int libusb20_tr_get_length (struct libusb20_transfer*,scalar_t__) ;
 scalar_t__ libusb20_tr_get_max_frames (struct libusb20_transfer*) ;
 int libusb20_tr_get_priv_sc0 (struct libusb20_transfer*) ;
 struct libusb_super_transfer* libusb20_tr_get_priv_sc1 (struct libusb20_transfer*) ;
 int libusb20_tr_get_status (struct libusb20_transfer*) ;
 int libusb20_tr_set_total_frames (struct libusb20_transfer*,scalar_t__) ;
 int libusb20_tr_setup_isoc (struct libusb20_transfer*,int *,size_t,scalar_t__) ;
 int libusb20_tr_submit (struct libusb20_transfer*) ;

__attribute__((used)) static void
libusb10_isoc_proxy(struct libusb20_transfer *pxfer)
{
 struct libusb_super_transfer *sxfer;
 struct libusb_transfer *uxfer;
 uint32_t actlen;
 uint16_t iso_packets;
 uint16_t i;
 uint8_t status;

 status = libusb20_tr_get_status(pxfer);
 sxfer = libusb20_tr_get_priv_sc1(pxfer);
 actlen = libusb20_tr_get_actual_length(pxfer);
 iso_packets = libusb20_tr_get_max_frames(pxfer);

 if (sxfer == ((void*)0))
  return;

 uxfer = (struct libusb_transfer *)(
     ((uint8_t *)sxfer) + sizeof(*sxfer));

 if (iso_packets > uxfer->num_iso_packets)
  iso_packets = uxfer->num_iso_packets;

 if (iso_packets == 0)
  return;


 uxfer->num_iso_packets = iso_packets;

 switch (status) {
 case 129:

  uxfer->actual_length = actlen;
  for (i = 0; i != iso_packets; i++) {
   uxfer->iso_packet_desc[i].actual_length =
       libusb20_tr_get_length(pxfer, i);
  }
  libusb10_complete_transfer(pxfer, sxfer, LIBUSB_TRANSFER_COMPLETED);
  break;
 case 128:

  actlen = 0;
  for (i = 0; i != iso_packets; i++) {
   libusb20_tr_setup_isoc(pxfer,
       &uxfer->buffer[actlen],
       uxfer->iso_packet_desc[i].length, i);
   actlen += uxfer->iso_packet_desc[i].length;
  }


  sxfer->rem_len = 0;

  libusb20_tr_set_total_frames(pxfer, iso_packets);
  libusb20_tr_submit(pxfer);


  libusb10_submit_transfer_sub(libusb20_tr_get_priv_sc0(pxfer), uxfer->endpoint);
  break;
 default:
  libusb10_complete_transfer(pxfer, sxfer, libusb10_convert_error(status));
  break;
 }
}
