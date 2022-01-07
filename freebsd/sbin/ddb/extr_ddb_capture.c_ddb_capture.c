
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kvm_t ;


 int O_RDONLY ;
 int _POSIX2_LINE_MAX ;
 int ddb_capture_print_kvm (int *) ;
 int ddb_capture_print_sysctl () ;
 int ddb_capture_status_kvm (int *) ;
 int ddb_capture_status_sysctl () ;
 int errx (int,char*,...) ;
 int getopt (int,char**,char*) ;
 scalar_t__ kvm_nlist (int *,int ) ;
 int * kvm_openfiles (char*,char*,int *,int ,char*) ;
 int namelist ;
 char* optarg ;
 scalar_t__ optind ;
 scalar_t__ strcmp (char*,char*) ;
 int usage () ;

void
ddb_capture(int argc, char *argv[])
{
 char *mflag, *nflag, errbuf[_POSIX2_LINE_MAX];
 kvm_t *kvm;
 int ch;

 mflag = ((void*)0);
 nflag = ((void*)0);
 kvm = ((void*)0);
 while ((ch = getopt(argc, argv, "M:N:")) != -1) {
  switch (ch) {
  case 'M':
   mflag = optarg;
   break;

  case 'N':
   nflag = optarg;
   break;

  default:
   usage();
  }
 }
 argc -= optind;
 argv += optind;

 if (argc != 1)
  usage();

 if (mflag != ((void*)0)) {
  kvm = kvm_openfiles(nflag, mflag, ((void*)0), O_RDONLY, errbuf);
  if (kvm == ((void*)0))
   errx(-1, "ddb_capture: kvm_openfiles: %s", errbuf);
  if (kvm_nlist(kvm, namelist) != 0)
   errx(-1, "ddb_capture: kvm_nlist");
 } else if (nflag != ((void*)0))
  usage();
 if (strcmp(argv[0], "print") == 0) {
  if (kvm != ((void*)0))
   ddb_capture_print_kvm(kvm);
  else
   ddb_capture_print_sysctl();
 } else if (strcmp(argv[0], "status") == 0) {
  if (kvm != ((void*)0))
   ddb_capture_status_kvm(kvm);
  else
   ddb_capture_status_sysctl();
 } else
  usage();
}
