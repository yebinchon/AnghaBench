
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct libusb_transfer {int flags; int actual_length; int buffer; int endpoint; } ;
struct libusb_super_transfer {int last_len; int rem_len; int curr_data; } ;
struct libusb20_transfer {int dummy; } ;




 int LIBUSB_TRANSFER_COMPLETED ;
 int LIBUSB_TRANSFER_ERROR ;
 int LIBUSB_TRANSFER_SHORT_NOT_OK ;
 int libusb10_complete_transfer (struct libusb20_transfer*,struct libusb_super_transfer*,int ) ;
 int libusb10_convert_error (int) ;
 int libusb10_submit_transfer_sub (int ,int ) ;
 int libusb20_tr_get_actual_length (struct libusb20_transfer*) ;
 int libusb20_tr_get_length (struct libusb20_transfer*,int ) ;
 int libusb20_tr_get_max_total_length (struct libusb20_transfer*) ;
 int libusb20_tr_get_priv_sc0 (struct libusb20_transfer*) ;
 struct libusb_super_transfer* libusb20_tr_get_priv_sc1 (struct libusb20_transfer*) ;
 int libusb20_tr_get_status (struct libusb20_transfer*) ;
 int libusb20_tr_set_buffer (struct libusb20_transfer*,int,int) ;
 int libusb20_tr_set_length (struct libusb20_transfer*,int,int) ;
 int libusb20_tr_set_total_frames (struct libusb20_transfer*,int) ;
 int libusb20_tr_submit (struct libusb20_transfer*) ;

__attribute__((used)) static void
libusb10_ctrl_proxy(struct libusb20_transfer *pxfer)
{
 struct libusb_super_transfer *sxfer;
 struct libusb_transfer *uxfer;
 uint32_t max_bulk;
 uint32_t actlen;
 uint8_t status;
 uint8_t flags;

 status = libusb20_tr_get_status(pxfer);
 sxfer = libusb20_tr_get_priv_sc1(pxfer);
 max_bulk = libusb20_tr_get_max_total_length(pxfer);
 actlen = libusb20_tr_get_actual_length(pxfer);

 if (sxfer == ((void*)0))
  return;

 uxfer = (struct libusb_transfer *)(
     ((uint8_t *)sxfer) + sizeof(*sxfer));

 flags = uxfer->flags;

 switch (status) {
 case 129:

  uxfer->actual_length += actlen;


  actlen -= libusb20_tr_get_length(pxfer, 0);


  if (sxfer->last_len != actlen) {
   if (flags & LIBUSB_TRANSFER_SHORT_NOT_OK) {
    libusb10_complete_transfer(pxfer, sxfer, LIBUSB_TRANSFER_ERROR);
   } else {
    libusb10_complete_transfer(pxfer, sxfer, LIBUSB_TRANSFER_COMPLETED);
   }
   break;
  }

  if (sxfer->rem_len == 0) {
   libusb10_complete_transfer(pxfer, sxfer, LIBUSB_TRANSFER_COMPLETED);
   break;
  }


 case 128:
  if (max_bulk > sxfer->rem_len) {
   max_bulk = sxfer->rem_len;
  }

  if (status == 129) {

   libusb20_tr_set_length(pxfer, 0, 0);
  } else {

   libusb20_tr_set_length(pxfer, 8, 0);
   libusb20_tr_set_buffer(pxfer, uxfer->buffer, 0);
  }

  if (max_bulk != 0) {
   libusb20_tr_set_length(pxfer, max_bulk, 1);
   libusb20_tr_set_buffer(pxfer, sxfer->curr_data, 1);
   libusb20_tr_set_total_frames(pxfer, 2);
  } else {
   libusb20_tr_set_total_frames(pxfer, 1);
  }


  sxfer->last_len = max_bulk;
  sxfer->curr_data += max_bulk;
  sxfer->rem_len -= max_bulk;

  libusb20_tr_submit(pxfer);


  if (sxfer->rem_len == 0)
   libusb10_submit_transfer_sub(libusb20_tr_get_priv_sc0(pxfer), uxfer->endpoint);
  break;

 default:
  libusb10_complete_transfer(pxfer, sxfer, libusb10_convert_error(status));
  break;
 }
}
