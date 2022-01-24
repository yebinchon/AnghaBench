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
typedef  scalar_t__ uint8_t ;
struct libusb20_device {int dummy; } ;
struct libusb20_backend {int dummy; } ;
struct LIBUSB20_DEVICE_DESC_DECODED {int idVendor; int idProduct; } ;

/* Variables and functions */
 size_t BUFLEN ; 
 int EX_USAGE ; 
 int /*<<< orphan*/  LIBUSB20_CONTROL_SETUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 unsigned int UINT_MAX ; 
 int do_request ; 
 int /*<<< orphan*/  FUNC1 (struct libusb20_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (int,char**,char*) ; 
 int intr_ep ; 
 struct libusb20_backend* FUNC4 () ; 
 struct libusb20_device* FUNC5 (struct libusb20_backend*,struct libusb20_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct libusb20_backend*) ; 
 char* FUNC7 (struct libusb20_device*) ; 
 struct LIBUSB20_DEVICE_DESC_DECODED* FUNC8 (struct libusb20_device*) ; 
 int /*<<< orphan*/  optarg ; 
 int optind ; 
 scalar_t__* out_buf ; 
 size_t out_len ; 
 int FUNC9 (int,char**) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int,int) ; 
 int /*<<< orphan*/  setup ; 
 int /*<<< orphan*/  stderr ; 
 void* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned int FUNC13 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 

int
FUNC15(int argc, char **argv)
{
  unsigned int vid = UINT_MAX, pid = UINT_MAX; /* impossible VID:PID */
  int c;

  /*
   * Initialize setup struct.  This step is required, and initializes
   * internal fields in the struct.
   *
   * All the "public" fields are named exactly the way as the USB
   * standard describes them, namely:
   *
   *	setup.bmRequestType: bitmask, bit 7 is direction
   *	                              bits 6/5 is request type
   *	                                       (standard, class, vendor)
   *	                              bits 4..0 is recipient
   *	                                       (device, interface, endpoint,
   *	                                        other)
   *	setup.bRequest:      the request itself (see get_req() for standard
   *	                                         requests, or specific value)
   *	setup.wValue:        a 16-bit value
   *	setup.wIndex:        another 16-bit value
   *	setup.wLength:       length of associated data transfer, direction
   *	                     depends on bit 7 of bmRequestType
   */
  FUNC0(LIBUSB20_CONTROL_SETUP, &setup);

  while ((c = FUNC3(argc, argv, "i:p:v:")) != -1)
    switch (c)
      {
      case 'i':
	intr_ep = FUNC12(optarg, NULL, 0);
	break;

      case 'p':
	pid = FUNC12(optarg, NULL, 0);
	break;

      case 'v':
	vid = FUNC12(optarg, NULL, 0);
	break;

      default:
	FUNC14();
	break;
      }
  argc -= optind;
  argv += optind;

  if (vid != UINT_MAX || pid != UINT_MAX)
    {
      if (intr_ep != 0 && (intr_ep & 0x80) == 0)
	{
	  FUNC2(stderr, "Interrupt endpoint must be of type IN\n");
	  FUNC14();
	}

      if (argc > 0)
	{
	  do_request = true;

	  int rv = FUNC9(argc, argv);
	  if (rv < 0)
	    return EX_USAGE;
	  argc = rv;

	  if (argc > 0)
	    {
	      for (out_len = 0; argc > 0 && out_len < BUFLEN; out_len++, argc--)
		{
		  unsigned n = FUNC13(argv[out_len], 0, 0);
		  if (n > 255)
		    FUNC2(stderr,
			    "Warning: data #%zu 0x%0x > 0xff, truncating\n",
			    out_len, n);
		  out_buf[out_len] = (uint8_t)n;
		}
	      out_len++;
	      if (argc > 0)
		FUNC2(stderr,
			"Data count exceeds maximum of %zu, ignoring %d elements\n",
			BUFLEN, optind);
	    }
	}
    }

  struct libusb20_backend *be;
  struct libusb20_device *dev;

  if ((be = FUNC4()) == NULL)
    {
      FUNC10("libusb20_be_alloc()");
      return 1;
    }

  dev = NULL;
  while ((dev = FUNC5(be, dev)) != NULL)
    {
      struct LIBUSB20_DEVICE_DESC_DECODED *ddp =
      FUNC8(dev);

      FUNC11("Found device %s (VID:PID = 0x%04x:0x%04x)\n",
	     FUNC7(dev),
	     ddp->idVendor, ddp->idProduct);

      if (ddp->idVendor == vid && ddp->idProduct == pid)
	FUNC1(dev);
    }

  FUNC6(be);
  return 0;
}