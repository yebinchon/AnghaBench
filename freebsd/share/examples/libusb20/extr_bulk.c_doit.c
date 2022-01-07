
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct libusb20_transfer {int dummy; } ;
struct libusb20_device {int dummy; } ;


 int BUFLEN ;
 int TIMEOUT ;
 int fprintf (int ,char*,char*) ;
 int in_ep ;
 int libusb20_dev_close (struct libusb20_device*) ;
 int libusb20_dev_open (struct libusb20_device*,int) ;
 int libusb20_dev_set_config_index (struct libusb20_device*,int ) ;
 char* libusb20_strerror (int) ;
 int libusb20_tr_bulk_intr_sync (struct libusb20_transfer*,int *,int,int*,int ) ;
 int libusb20_tr_close (struct libusb20_transfer*) ;
 struct libusb20_transfer* libusb20_tr_get_pointer (struct libusb20_device*,int) ;
 int libusb20_tr_open (struct libusb20_transfer*,int ,int,int ) ;
 int * out_buf ;
 int out_ep ;
 scalar_t__ out_len ;
 int print_formatted (int *,int) ;
 int printf (char*,int) ;
 int stderr ;

__attribute__((used)) static void
doit(struct libusb20_device *dev)
{
  int rv;
  if ((rv = libusb20_dev_open(dev, 2)) != 0)
    {
      fprintf(stderr, "libusb20_dev_open: %s\n", libusb20_strerror(rv));
      return;
    }





  if ((rv = libusb20_dev_set_config_index(dev, 0)) != 0)
    {
      fprintf(stderr, "libusb20_dev_set_config_index: %s\n", libusb20_strerror(rv));
      return;
    }





  struct libusb20_transfer *xfr_out = libusb20_tr_get_pointer(dev, 0);
  struct libusb20_transfer *xfr_in = libusb20_tr_get_pointer(dev, 1);

  if (xfr_in == ((void*)0) || xfr_out == ((void*)0))
    {
      fprintf(stderr, "libusb20_tr_get_pointer: %s\n", libusb20_strerror(rv));
      return;
    }





  if ((rv = libusb20_tr_open(xfr_out, 0, 1, out_ep)) != 0)
    {
      fprintf(stderr, "libusb20_tr_open: %s\n", libusb20_strerror(rv));
      return;
    }
  if ((rv = libusb20_tr_open(xfr_in, 0, 1, in_ep)) != 0)
    {
      fprintf(stderr, "libusb20_tr_open: %s\n", libusb20_strerror(rv));
      return;
    }

  uint8_t in_buf[BUFLEN];
  uint32_t rlen;

  if (out_len > 0)
    {
      if ((rv = libusb20_tr_bulk_intr_sync(xfr_out, out_buf, out_len, &rlen, TIMEOUT))
   != 0)
 {
   fprintf(stderr, "libusb20_tr_bulk_intr_sync (OUT): %s\n", libusb20_strerror(rv));
 }
      printf("sent %d bytes\n", rlen);
    }

  if ((rv = libusb20_tr_bulk_intr_sync(xfr_in, in_buf, BUFLEN, &rlen, TIMEOUT))
      != 0)
    {
      fprintf(stderr, "libusb20_tr_bulk_intr_sync: %s\n", libusb20_strerror(rv));
    }
      printf("received %d bytes\n", rlen);
      if (rlen > 0)
 print_formatted(in_buf, rlen);

  libusb20_tr_close(xfr_out);
  libusb20_tr_close(xfr_in);

  libusb20_dev_close(dev);
}
