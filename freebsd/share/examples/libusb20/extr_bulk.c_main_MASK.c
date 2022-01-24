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
 unsigned int UINT_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct libusb20_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (int,char**,char*) ; 
 int in_ep ; 
 struct libusb20_backend* FUNC3 () ; 
 struct libusb20_device* FUNC4 (struct libusb20_backend*,struct libusb20_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct libusb20_backend*) ; 
 char* FUNC6 (struct libusb20_device*) ; 
 struct LIBUSB20_DEVICE_DESC_DECODED* FUNC7 (struct libusb20_device*) ; 
 int /*<<< orphan*/  optarg ; 
 int optind ; 
 scalar_t__* out_buf ; 
 scalar_t__ out_ep ; 
 size_t out_len ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int,int) ; 
 int /*<<< orphan*/  stderr ; 
 void* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned int FUNC11 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 

int
FUNC13(int argc, char **argv)
{
  unsigned int vid = UINT_MAX, pid = UINT_MAX; /* impossible VID:PID */
  int c;

  while ((c = FUNC2(argc, argv, "i:o:p:v:")) != -1)
    switch (c)
      {
      case 'i':
	in_ep = FUNC10(optarg, NULL, 0);
	break;

      case 'o':
	out_ep = FUNC10(optarg, NULL, 0);
	break;

      case 'p':
	pid = FUNC10(optarg, NULL, 0);
	break;

      case 'v':
	vid = FUNC10(optarg, NULL, 0);
	break;

      default:
	FUNC12();
	break;
      }
  argc -= optind;
  argv += optind;

  if (vid != UINT_MAX || pid != UINT_MAX)
    {
      if (in_ep == 0 || out_ep == 0)
	{
	  FUNC12();
	}
      if ((in_ep & 0x80) == 0)
	{
	  FUNC1(stderr, "IN_EP must have bit 7 set\n");
	  return (EX_USAGE);
	}

      if (argc > 0)
	{
	  for (out_len = 0; argc > 0 && out_len < BUFLEN; out_len++, argc--)
	    {
	      unsigned n = FUNC11(argv[out_len], 0, 0);
	      if (n > 255)
		FUNC1(stderr,
			"Warning: data #%zu 0x%0x > 0xff, truncating\n",
			out_len, n);
	      out_buf[out_len] = (uint8_t)n;
	    }
	  out_len++;
	  if (argc > 0)
	    FUNC1(stderr,
		    "Data count exceeds maximum of %zu, ignoring %d elements\n",
		    BUFLEN, optind);
	}
    }

  struct libusb20_backend *be;
  struct libusb20_device *dev;

  if ((be = FUNC3()) == NULL)
    {
      FUNC8("libusb20_be_alloc()");
      return 1;
    }

  dev = NULL;
  while ((dev = FUNC4(be, dev)) != NULL)
    {
      struct LIBUSB20_DEVICE_DESC_DECODED *ddp =
      FUNC7(dev);

      FUNC9("Found device %s (VID:PID = 0x%04x:0x%04x)\n",
	     FUNC6(dev),
	     ddp->idVendor, ddp->idProduct);

      if (ddp->idVendor == vid && ddp->idProduct == pid)
	FUNC0(dev);
    }

  FUNC5(be);
  return 0;
}