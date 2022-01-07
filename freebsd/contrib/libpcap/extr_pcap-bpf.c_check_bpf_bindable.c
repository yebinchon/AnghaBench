
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PCAP_ERRBUF_SIZE ;
 int PCAP_ERROR_NO_SUCH_DEVICE ;
 int bpf_open_and_bind (char const*,char*) ;
 int close (int) ;
 int errno ;
 int free (char*) ;
 char* malloc (size_t) ;
 int pcap_fmt_errmsg_for_errno (char*,int,int ,char*) ;
 int strcat (char*,char const*) ;
 int strcpy (char*,char*) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static int
check_bpf_bindable(const char *name)
{
 int fd;
 char errbuf[PCAP_ERRBUF_SIZE];
 fd = bpf_open_and_bind(name, errbuf);
 if (fd < 0) {



  if (fd == PCAP_ERROR_NO_SUCH_DEVICE) {




   return (0);
  }
  return (1);
 }




 close(fd);
 return (1);
}
