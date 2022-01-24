#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct libusb20_transfer {int dummy; } ;
struct libusb20_device {int dummy; } ;

/* Variables and functions */
 int BUFLEN ; 
 int /*<<< orphan*/  TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  in_ep ; 
 int /*<<< orphan*/  FUNC1 (struct libusb20_device*) ; 
 int FUNC2 (struct libusb20_device*,int) ; 
 int FUNC3 (struct libusb20_device*,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int) ; 
 int FUNC5 (struct libusb20_transfer*,int /*<<< orphan*/ *,int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct libusb20_transfer*) ; 
 struct libusb20_transfer* FUNC7 (struct libusb20_device*,int) ; 
 int FUNC8 (struct libusb20_transfer*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * out_buf ; 
 int /*<<< orphan*/  out_ep ; 
 scalar_t__ out_len ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC11(struct libusb20_device *dev)
{
  int rv;

  /*
   * Open the device, allocating memory for two possible (bulk or
   * interrupt) transfers.
   *
   * If only control transfers are intended (via
   * libusb20_dev_request_sync()), transfer_max can be given as 0.
   */
  if ((rv = FUNC2(dev, 2)) != 0)
    {
      FUNC0(stderr, "libusb20_dev_open: %s\n", FUNC4(rv));
      return;
    }

  /*
   * If the device has more than one configuration, select the desired
   * one here.
   */
  if ((rv = FUNC3(dev, 0)) != 0)
    {
      FUNC0(stderr, "libusb20_dev_set_config_index: %s\n", FUNC4(rv));
      return;
    }

  /*
   * Two transfers have been requested in libusb20_dev_open() above;
   * obtain the corresponding transfer struct pointers.
   */
  struct libusb20_transfer *xfr_out = FUNC7(dev, 0);
  struct libusb20_transfer *xfr_in = FUNC7(dev, 1);

  if (xfr_in == NULL || xfr_out == NULL)
    {
      FUNC0(stderr, "libusb20_tr_get_pointer: %s\n", FUNC4(rv));
      return;
    }

  /*
   * Open both transfers, the "out" one for the write endpoint, the
   * "in" one for the read endpoint (ep | 0x80).
   */
  if ((rv = FUNC8(xfr_out, 0, 1, out_ep)) != 0)
    {
      FUNC0(stderr, "libusb20_tr_open: %s\n", FUNC4(rv));
      return;
    }
  if ((rv = FUNC8(xfr_in, 0, 1, in_ep)) != 0)
    {
      FUNC0(stderr, "libusb20_tr_open: %s\n", FUNC4(rv));
      return;
    }

  uint8_t in_buf[BUFLEN];
  uint32_t rlen;

  if (out_len > 0)
    {
      if ((rv = FUNC5(xfr_out, out_buf, out_len, &rlen, TIMEOUT))
	  != 0)
	{
	  FUNC0(stderr, "libusb20_tr_bulk_intr_sync (OUT): %s\n", FUNC4(rv));
	}
      FUNC10("sent %d bytes\n", rlen);
    }

  if ((rv = FUNC5(xfr_in, in_buf, BUFLEN, &rlen, TIMEOUT))
      != 0)
    {
      FUNC0(stderr, "libusb20_tr_bulk_intr_sync: %s\n", FUNC4(rv));
    }
      FUNC10("received %d bytes\n", rlen);
      if (rlen > 0)
	FUNC9(in_buf, rlen);

  FUNC6(xfr_out);
  FUNC6(xfr_in);

  FUNC1(dev);
}