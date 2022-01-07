
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct libusb20_transfer {int dummy; } ;


 int libusb20_tr_open_stream (struct libusb20_transfer*,int ,int ,int ,int ) ;

int
libusb20_tr_open(struct libusb20_transfer *xfer, uint32_t MaxBufSize,
    uint32_t MaxFrameCount, uint8_t ep_no)
{
 return (libusb20_tr_open_stream(xfer, MaxBufSize, MaxFrameCount, ep_no, 0));
}
