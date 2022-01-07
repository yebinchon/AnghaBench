
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device ;



 int EBUSY ;

 int O_RDONLY ;
 int O_RDWR ;
 int PCAP_ERRBUF_SIZE ;
 int PCAP_ERROR ;
 int PCAP_ERROR_PERM_DENIED ;
 int bpf_load (char*) ;
 int errno ;
 int open (char const*,int ) ;
 int pcap_fmt_errmsg_for_errno (char*,int ,int,char*,char const*) ;
 int pcap_snprintf (char*,int,char*,...) ;

__attribute__((used)) static int
bpf_open(char *errbuf)
{
 int fd = -1;
 static const char cloning_device[] = "/dev/bpf";
 int n = 0;
 char device[sizeof "/dev/bpf0000000000"];
 static int no_cloning_bpf = 0;
 if (!no_cloning_bpf &&
     (fd = open(cloning_device, O_RDWR)) == -1 &&
     ((errno != 129 && errno != 128) ||
      (fd = open(cloning_device, O_RDONLY)) == -1)) {
  if (errno != 128) {
   if (errno == 129)
    fd = PCAP_ERROR_PERM_DENIED;
   else
    fd = PCAP_ERROR;
   pcap_fmt_errmsg_for_errno(errbuf, PCAP_ERRBUF_SIZE,
       errno, "(cannot open device) %s", cloning_device);
   return (fd);
  }
  no_cloning_bpf = 1;
 }

 if (no_cloning_bpf) {





  do {
   (void)pcap_snprintf(device, sizeof(device), "/dev/bpf%d", n++);
   fd = open(device, O_RDWR);
   if (fd == -1 && errno == 129)
    fd = open(device, O_RDONLY);
  } while (fd < 0 && errno == EBUSY);
 }




 if (fd < 0) {
  switch (errno) {

  case 128:
   fd = PCAP_ERROR;
   if (n == 1) {





    pcap_snprintf(errbuf, PCAP_ERRBUF_SIZE,
        "(there are no BPF devices)");
   } else {






    pcap_snprintf(errbuf, PCAP_ERRBUF_SIZE,
        "(all BPF devices are busy)");
   }
   break;

  case 129:





   fd = PCAP_ERROR_PERM_DENIED;
   pcap_fmt_errmsg_for_errno(errbuf, PCAP_ERRBUF_SIZE,
       errno, "(cannot open BPF device) %s", device);
   break;

  default:



   fd = PCAP_ERROR;
   pcap_fmt_errmsg_for_errno(errbuf, PCAP_ERRBUF_SIZE,
       errno, "(cannot open BPF device) %s", device);
   break;
  }
 }

 return (fd);
}
