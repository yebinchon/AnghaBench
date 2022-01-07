
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct sockaddr_in {int sin_addr; } ;
struct TYPE_6__ {int in4; } ;
struct TYPE_5__ {int in4; } ;
struct TYPE_4__ {int in4; } ;
struct diocskerneldump_arg {int kda_index; int kda_encryption; int kda_encryptedkeysize; struct diocskerneldump_arg* kda_encryptedkey; void* kda_af; TYPE_3__ kda_gateway; TYPE_2__ kda_client; TYPE_1__ kda_server; int kda_iface; int kda_compression; } ;
struct addrinfo {scalar_t__ ai_addr; int ai_protocol; void* ai_family; } ;
typedef int hints ;


 void* AF_INET ;
 int DIOCSKERNELDUMP ;
 int ENODEV ;
 int ENXIO ;
 int EX_OK ;
 int EX_OSERR ;
 int EX_UNAVAILABLE ;
 int EX_USAGE ;
 int IPPROTO_UDP ;
 int KDA_APPEND ;
 int KDA_REMOVE ;
 int KERNELDUMP_COMP_GZIP ;
 int KERNELDUMP_COMP_NONE ;
 int KERNELDUMP_COMP_ZSTD ;
 int KERNELDUMP_ENC_AES_256_CBC ;
 int KERNELDUMP_ENC_CHACHA20 ;
 int KERNELDUMP_ENC_NONE ;
 int PATH_MAX ;
 char* _PATH_DEVNULL ;
 char* _PATH_NETDUMP ;
 int atoi (char*) ;
 int bzero (struct diocskerneldump_arg*,int) ;
 int check_size (int,char*) ;
 int err (int,char*,int ) ;
 int errc (int ,int,char*) ;
 int errno ;
 int errx (int,char*,...) ;
 int exit (int ) ;
 int explicit_bzero (struct diocskerneldump_arg*,int) ;
 char* find_gateway (char*) ;
 int free (struct diocskerneldump_arg*) ;
 int freeaddrinfo (struct addrinfo*) ;
 int gai_strerror (int) ;
 int genkey (char const*,struct diocskerneldump_arg*) ;
 int getaddrinfo (char const*,int *,struct addrinfo*,struct addrinfo**) ;
 int getopt (int,char**,char*) ;
 scalar_t__ inet_aton (char const*,int *) ;
 char* inet_ntoa (int ) ;
 int ioctl (int,int ,struct diocskerneldump_arg*) ;
 int listdumpdev () ;
 int memset (struct addrinfo*,int ,int) ;
 int opendumpdev (char const*,char*) ;
 char* optarg ;
 scalar_t__ optind ;
 int printf (char*,char const*) ;
 int strcasecmp (char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlcpy (int ,char*,int) ;
 int usage () ;
 int verbose ;

int
main(int argc, char *argv[])
{
 char dumpdev[PATH_MAX];
 struct diocskerneldump_arg ndconf, *kdap;
 struct addrinfo hints, *res;
 const char *dev, *pubkeyfile, *server, *client, *gateway;
 int ch, error, fd, cipher;
 bool gzip, list, netdump, zstd, insert, rflag;
 uint8_t ins_idx;

 gzip = list = netdump = zstd = insert = rflag = 0;
 kdap = ((void*)0);
 pubkeyfile = ((void*)0);
 server = client = gateway = ((void*)0);
 ins_idx = KDA_APPEND;
 cipher = KERNELDUMP_ENC_NONE;

 while ((ch = getopt(argc, argv, "C:c:g:i:k:lrs:vZz")) != -1)
  switch ((char)ch) {
  case 'C':
   if (strcasecmp(optarg, "chacha") == 0 ||
       strcasecmp(optarg, "chacha20") == 0)
    cipher = KERNELDUMP_ENC_CHACHA20;
   else if (strcasecmp(optarg, "aes-cbc") == 0 ||
       strcasecmp(optarg, "aes256-cbc") == 0)
    cipher = KERNELDUMP_ENC_AES_256_CBC;
   else
    errx(EX_USAGE, "Unrecognized cipher algorithm "
        "'%s'", optarg);
   break;
  case 'c':
   client = optarg;
   break;
  case 'g':
   gateway = optarg;
   break;
  case 'i':
   {
   int i;

   i = atoi(optarg);
   if (i < 0 || i >= KDA_APPEND - 1)
    errx(EX_USAGE,
        "-i index must be between zero and %d.",
        (int)KDA_APPEND - 2);
   insert = 1;
   ins_idx = i;
   }
   break;
  case 'k':
   pubkeyfile = optarg;
   break;
  case 'l':
   list = 1;
   break;
  case 'r':
   rflag = 1;
   break;
  case 's':
   server = optarg;
   break;
  case 'v':
   verbose = 1;
   break;
  case 'Z':
   zstd = 1;
   break;
  case 'z':
   gzip = 1;
   break;
  default:
   usage();
  }

 if (gzip && zstd)
  errx(EX_USAGE, "The -z and -Z options are mutually exclusive.");

 if (insert && rflag)
  errx(EX_USAGE, "The -i and -r options are mutually exclusive.");

 argc -= optind;
 argv += optind;

 if (list) {
  listdumpdev();
  exit(EX_OK);
 }

 if (argc != 1)
  usage();





 if (pubkeyfile != ((void*)0))
  errx(EX_UNAVAILABLE,"Unable to use the public key."
        " Recompile dumpon with OpenSSL support.");


 if (server != ((void*)0) && client != ((void*)0)) {
  dev = _PATH_NETDUMP;
  netdump = 1;
 } else if (server == ((void*)0) && client == ((void*)0) && argc > 0) {
  if (strcmp(argv[0], "off") == 0) {
   rflag = 1;
   dev = _PATH_DEVNULL;
  } else
   dev = argv[0];
  netdump = 0;
 } else
  usage();

 fd = opendumpdev(dev, dumpdev);
 if (!netdump && !gzip && !rflag)
  check_size(fd, dumpdev);

 kdap = &ndconf;
 bzero(kdap, sizeof(*kdap));

 if (rflag)
  kdap->kda_index = KDA_REMOVE;
 else
  kdap->kda_index = ins_idx;

 kdap->kda_compression = KERNELDUMP_COMP_NONE;
 if (zstd)
  kdap->kda_compression = KERNELDUMP_COMP_ZSTD;
 else if (gzip)
  kdap->kda_compression = KERNELDUMP_COMP_GZIP;

 if (netdump) {
  memset(&hints, 0, sizeof(hints));
  hints.ai_family = AF_INET;
  hints.ai_protocol = IPPROTO_UDP;
  res = ((void*)0);
  error = getaddrinfo(server, ((void*)0), &hints, &res);
  if (error != 0)
   err(1, "%s", gai_strerror(error));
  if (res == ((void*)0))
   errx(1, "failed to resolve '%s'", server);
  server = inet_ntoa(
      ((struct sockaddr_in *)(void *)res->ai_addr)->sin_addr);
  freeaddrinfo(res);

  if (strlcpy(ndconf.kda_iface, argv[0],
      sizeof(ndconf.kda_iface)) >= sizeof(ndconf.kda_iface))
   errx(EX_USAGE, "invalid interface name '%s'", argv[0]);
  if (inet_aton(server, &ndconf.kda_server.in4) == 0)
   errx(EX_USAGE, "invalid server address '%s'", server);
  if (inet_aton(client, &ndconf.kda_client.in4) == 0)
   errx(EX_USAGE, "invalid client address '%s'", client);

  if (gateway == ((void*)0)) {
   gateway = find_gateway(argv[0]);
   if (gateway == ((void*)0)) {
    if (verbose)
     printf(
        "failed to look up gateway for %s\n",
         server);
    gateway = server;
   }
  }
  if (inet_aton(gateway, &ndconf.kda_gateway.in4) == 0)
   errx(EX_USAGE, "invalid gateway address '%s'", gateway);
  ndconf.kda_af = AF_INET;
 }







 error = ioctl(fd, DIOCSKERNELDUMP, kdap);
 if (error != 0)
  error = errno;
 explicit_bzero(kdap->kda_encryptedkey, kdap->kda_encryptedkeysize);
 free(kdap->kda_encryptedkey);
 explicit_bzero(kdap, sizeof(*kdap));
 if (error != 0) {
  if (netdump) {





   if (error == ENXIO)
    errx(EX_OSERR, "Unable to configure netdump "
        "because the interface's link is down.");
   else if (error == ENODEV)
    errx(EX_OSERR, "Unable to configure netdump "
        "because the interface driver does not yet "
        "support netdump.");
  }
  errc(EX_OSERR, error, "ioctl(DIOCSKERNELDUMP)");
 }

 if (verbose)
  listdumpdev();

 exit(EX_OK);
}
