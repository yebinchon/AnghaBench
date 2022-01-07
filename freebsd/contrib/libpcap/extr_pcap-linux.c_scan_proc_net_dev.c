
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pcap_if_list_t ;
typedef int FILE ;


 scalar_t__ ENOENT ;
 int PCAP_ERRBUF_SIZE ;
 int PF_UNIX ;
 int SOCK_RAW ;
 int add_linux_if (int *,char*,int,char*) ;
 int close (int) ;
 scalar_t__ errno ;
 int fclose (int *) ;
 scalar_t__ ferror (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 scalar_t__ isascii (char) ;
 scalar_t__ isspace (char) ;
 int pcap_fmt_errmsg_for_errno (char*,int ,scalar_t__,char*) ;
 int socket (int ,int ,int ) ;

__attribute__((used)) static int
scan_proc_net_dev(pcap_if_list_t *devlistp, char *errbuf)
{
 FILE *proc_net_f;
 int fd;
 char linebuf[512];
 int linenum;
 char *p;
 int ret = 0;

 proc_net_f = fopen("/proc/net/dev", "r");
 if (proc_net_f == ((void*)0)) {



  if (errno == ENOENT)
   return (0);




  pcap_fmt_errmsg_for_errno(errbuf, PCAP_ERRBUF_SIZE,
      errno, "Can't open /proc/net/dev");
  return (-1);
 }




 fd = socket(PF_UNIX, SOCK_RAW, 0);
 if (fd < 0) {
  pcap_fmt_errmsg_for_errno(errbuf, PCAP_ERRBUF_SIZE,
      errno, "socket");
  (void)fclose(proc_net_f);
  return (-1);
 }

 for (linenum = 1;
     fgets(linebuf, sizeof linebuf, proc_net_f) != ((void*)0); linenum++) {



  if (linenum <= 2)
   continue;

  p = &linebuf[0];




  while (*p != '\0' && isascii(*p) && isspace(*p))
   p++;
  if (*p == '\0' || *p == '\n')
   continue;




  if (add_linux_if(devlistp, p, fd, errbuf) == -1) {

   ret = -1;
   break;
  }
 }
 if (ret != -1) {




  if (ferror(proc_net_f)) {
   pcap_fmt_errmsg_for_errno(errbuf, PCAP_ERRBUF_SIZE,
       errno, "Error reading /proc/net/dev");
   ret = -1;
  }
 }

 (void)close(fd);
 (void)fclose(proc_net_f);
 return (ret);
}
