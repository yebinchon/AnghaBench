
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diocskerneldump_arg {int kda_gateway; int kda_af; int kda_client; int kda_server; } ;
typedef int ip ;
typedef int dumpdev ;


 int DIOCGKERNELDUMP ;
 scalar_t__ ENOENT ;
 scalar_t__ ENOMEM ;
 scalar_t__ ENXIO ;
 int EX_OSERR ;
 int O_RDONLY ;
 int PATH_MAX ;
 int _PATH_DEVNULL ;
 int _PATH_NETDUMP ;
 int close (int) ;
 int err (int ,char*,...) ;
 scalar_t__ errno ;
 char* inet_ntop (int ,int *,char*,int) ;
 scalar_t__ ioctl (int,int ,struct diocskerneldump_arg*) ;
 int open (int ,int ) ;
 int printf (char*,...) ;
 int strlcpy (char*,int ,int) ;
 scalar_t__ strlen (char*) ;
 char* strsep (char**,char*) ;
 scalar_t__ sysctlbyname (char const*,char**,size_t*,int *,int ) ;
 scalar_t__ verbose ;

__attribute__((used)) static void
listdumpdev(void)
{
 static char ip[200];

 char dumpdev[PATH_MAX];
 struct diocskerneldump_arg ndconf;
 size_t len;
 const char *sysctlname = "kern.shutdown.dumpdevname";
 int fd;

 len = sizeof(dumpdev);
 if (sysctlbyname(sysctlname, &dumpdev, &len, ((void*)0), 0) != 0) {
  if (errno == ENOMEM) {
   err(EX_OSERR, "Kernel returned too large of a buffer for '%s'\n",
    sysctlname);
  } else {
   err(EX_OSERR, "Sysctl get '%s'\n", sysctlname);
  }
 }
 if (strlen(dumpdev) == 0)
  (void)strlcpy(dumpdev, _PATH_DEVNULL, sizeof(dumpdev));

 if (verbose) {
  char *ctx, *dd;
  unsigned idx;

  printf("kernel dumps on priority: device\n");
  idx = 0;
  ctx = dumpdev;
  while ((dd = strsep(&ctx, ",")) != ((void*)0))
   printf("%u: %s\n", idx++, dd);
 } else
  printf("%s\n", dumpdev);


 if (verbose) {
  fd = open(_PATH_NETDUMP, O_RDONLY);
  if (fd < 0) {
   if (errno != ENOENT)
    err(EX_OSERR, "opening %s", _PATH_NETDUMP);
   return;
  }
  if (ioctl(fd, DIOCGKERNELDUMP, &ndconf) != 0) {
   if (errno != ENXIO)
    err(EX_OSERR, "ioctl(DIOCGKERNELDUMP)");
   (void)close(fd);
   return;
  }

  printf("server address: %s\n",
      inet_ntop(ndconf.kda_af, &ndconf.kda_server, ip,
   sizeof(ip)));
  printf("client address: %s\n",
      inet_ntop(ndconf.kda_af, &ndconf.kda_client, ip,
   sizeof(ip)));
  printf("gateway address: %s\n",
      inet_ntop(ndconf.kda_af, &ndconf.kda_gateway, ip,
   sizeof(ip)));
  (void)close(fd);
 }
}
