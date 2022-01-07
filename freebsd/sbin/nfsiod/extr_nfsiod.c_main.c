
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xvfsconf {int dummy; } ;


 unsigned int MAXNFSDCNT ;
 unsigned int atoi (int ) ;
 int err (int,char*) ;
 int errx (int,char*) ;
 int exit (int ) ;
 int getopt (int,char**,char*) ;
 int getvfsbyname (char*,struct xvfsconf*) ;
 int kldload (char*) ;
 int optarg ;
 scalar_t__ optind ;
 int printf (char*,unsigned int,unsigned int) ;
 int sysctlbyname (char*,unsigned int*,size_t*,unsigned int*,int) ;
 int usage () ;
 int warnx (char*,unsigned int,unsigned int) ;

int
main(int argc, char *argv[])
{
 int ch;
 struct xvfsconf vfc;
 int error;
 unsigned int iodmin, iodmax, num_servers;
 size_t len;

 error = getvfsbyname("nfs", &vfc);
 if (error) {
  if (kldload("nfs") == -1)
   err(1, "kldload(nfs)");
  error = getvfsbyname("nfs", &vfc);
 }
 if (error)
  errx(1, "NFS support is not available in the running kernel");

 num_servers = 0;
 while ((ch = getopt(argc, argv, "n:")) != -1)
  switch (ch) {
  case 'n':
   num_servers = atoi(optarg);
   if (num_servers < 1) {
    warnx("nfsiod count %u; reset to %d",
        num_servers, 1);
    num_servers = 1;
   }
   if (num_servers > MAXNFSDCNT) {
    warnx("nfsiod count %u; reset to %d",
        num_servers, MAXNFSDCNT);
    num_servers = MAXNFSDCNT;
   }
   break;
  case '?':
  default:
   usage();
  }
 argc -= optind;
 argv += optind;

 if (argc > 0)
  usage();

 len = sizeof iodmin;
 error = sysctlbyname("vfs.nfs.iodmin", &iodmin, &len, ((void*)0), 0);
 if (error < 0)
  err(1, "sysctlbyname(\"vfs.nfs.iodmin\")");
 len = sizeof iodmax;
 error = sysctlbyname("vfs.nfs.iodmax", &iodmax, &len, ((void*)0), 0);
 if (error < 0)
  err(1, "sysctlbyname(\"vfs.nfs.iodmax\")");
 if (num_servers == 0) {
  printf("vfs.nfs.iodmin=%u\nvfs.nfs.iodmax=%u\n",
      iodmin, iodmax);
  exit(0);
 }

 if (iodmin > num_servers) {
  iodmin = num_servers;
  error = sysctlbyname("vfs.nfs.iodmin", ((void*)0), 0, &iodmin,
      sizeof iodmin);
  if (error < 0)
   err(1, "sysctlbyname(\"vfs.nfs.iodmin\")");
 }
 iodmax = num_servers;
 error = sysctlbyname("vfs.nfs.iodmax", ((void*)0), 0, &iodmax, sizeof iodmax);
 if (error < 0)
  err(1, "sysctlbyname(\"vfs.nfs.iodmax\")");
 exit (0);
}
