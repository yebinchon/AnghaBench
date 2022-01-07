
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct libusb20_device {int dummy; } ;
struct libusb20_backend {int dummy; } ;
struct LIBUSB20_DEVICE_DESC_DECODED {int idVendor; int idProduct; } ;


 size_t BUFLEN ;
 int EX_USAGE ;
 int LIBUSB20_CONTROL_SETUP ;
 int LIBUSB20_INIT (int ,int *) ;
 unsigned int UINT_MAX ;
 int do_request ;
 int doit (struct libusb20_device*) ;
 int fprintf (int ,char*,...) ;
 int getopt (int,char**,char*) ;
 int intr_ep ;
 struct libusb20_backend* libusb20_be_alloc_default () ;
 struct libusb20_device* libusb20_be_device_foreach (struct libusb20_backend*,struct libusb20_device*) ;
 int libusb20_be_free (struct libusb20_backend*) ;
 char* libusb20_dev_get_desc (struct libusb20_device*) ;
 struct LIBUSB20_DEVICE_DESC_DECODED* libusb20_dev_get_device_desc (struct libusb20_device*) ;
 int optarg ;
 int optind ;
 scalar_t__* out_buf ;
 size_t out_len ;
 int parse_req (int,char**) ;
 int perror (char*) ;
 int printf (char*,char*,int,int) ;
 int setup ;
 int stderr ;
 void* strtol (int ,int *,int ) ;
 unsigned int strtoul (char*,int ,int ) ;
 int usage () ;

int
main(int argc, char **argv)
{
  unsigned int vid = UINT_MAX, pid = UINT_MAX;
  int c;
  LIBUSB20_INIT(LIBUSB20_CONTROL_SETUP, &setup);

  while ((c = getopt(argc, argv, "i:p:v:")) != -1)
    switch (c)
      {
      case 'i':
 intr_ep = strtol(optarg, ((void*)0), 0);
 break;

      case 'p':
 pid = strtol(optarg, ((void*)0), 0);
 break;

      case 'v':
 vid = strtol(optarg, ((void*)0), 0);
 break;

      default:
 usage();
 break;
      }
  argc -= optind;
  argv += optind;

  if (vid != UINT_MAX || pid != UINT_MAX)
    {
      if (intr_ep != 0 && (intr_ep & 0x80) == 0)
 {
   fprintf(stderr, "Interrupt endpoint must be of type IN\n");
   usage();
 }

      if (argc > 0)
 {
   do_request = 1;

   int rv = parse_req(argc, argv);
   if (rv < 0)
     return EX_USAGE;
   argc = rv;

   if (argc > 0)
     {
       for (out_len = 0; argc > 0 && out_len < BUFLEN; out_len++, argc--)
  {
    unsigned n = strtoul(argv[out_len], 0, 0);
    if (n > 255)
      fprintf(stderr,
       "Warning: data #%d 0x%0x > 0xff, truncating\n",
       out_len, n);
    out_buf[out_len] = (uint8_t)n;
  }
       out_len++;
       if (argc > 0)
  fprintf(stderr,
   "Data count exceeds maximum of %d, ignoring %d elements\n",
   BUFLEN, optind);
     }
 }
    }

  struct libusb20_backend *be;
  struct libusb20_device *dev;

  if ((be = libusb20_be_alloc_default()) == ((void*)0))
    {
      perror("libusb20_be_alloc()");
      return 1;
    }

  dev = ((void*)0);
  while ((dev = libusb20_be_device_foreach(be, dev)) != ((void*)0))
    {
      struct LIBUSB20_DEVICE_DESC_DECODED *ddp =
      libusb20_dev_get_device_desc(dev);

      printf("Found device %s (VID:PID = 0x%04x:0x%04x)\n",
      libusb20_dev_get_desc(dev),
      ddp->idVendor, ddp->idProduct);

      if (ddp->idVendor == vid && ddp->idProduct == pid)
 doit(dev);
    }

  libusb20_be_free(be);
  return 0;
}
