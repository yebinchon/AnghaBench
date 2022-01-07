
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
struct dirent {scalar_t__ d_type; int * d_name; } ;
typedef int pcap_if_list_t ;
typedef int DIR ;


 scalar_t__ DT_REG ;
 scalar_t__ ENOENT ;
 int PATH_MAX ;
 int PCAP_ERRBUF_SIZE ;
 int PF_UNIX ;
 int SOCK_RAW ;
 int add_linux_if (int *,int *,int,char*) ;
 int close (int) ;
 int closedir (int *) ;
 scalar_t__ errno ;
 scalar_t__ lstat (char*,struct stat*) ;
 int * opendir (char*) ;
 int pcap_fmt_errmsg_for_errno (char*,int ,scalar_t__,char*) ;
 int pcap_snprintf (char*,int,char*,int *) ;
 struct dirent* readdir (int *) ;
 int socket (int ,int ,int ) ;
 scalar_t__ strcmp (int *,char*) ;

__attribute__((used)) static int
scan_sys_class_net(pcap_if_list_t *devlistp, char *errbuf)
{
 DIR *sys_class_net_d;
 int fd;
 struct dirent *ent;
 char subsystem_path[PATH_MAX+1];
 struct stat statb;
 int ret = 1;

 sys_class_net_d = opendir("/sys/class/net");
 if (sys_class_net_d == ((void*)0)) {



  if (errno == ENOENT)
   return (0);




  pcap_fmt_errmsg_for_errno(errbuf, PCAP_ERRBUF_SIZE,
      errno, "Can't open /sys/class/net");
  return (-1);
 }




 fd = socket(PF_UNIX, SOCK_RAW, 0);
 if (fd < 0) {
  pcap_fmt_errmsg_for_errno(errbuf, PCAP_ERRBUF_SIZE,
      errno, "socket");
  (void)closedir(sys_class_net_d);
  return (-1);
 }

 for (;;) {
  errno = 0;
  ent = readdir(sys_class_net_d);
  if (ent == ((void*)0)) {



   break;
  }




  if (strcmp(ent->d_name, ".") == 0 ||
      strcmp(ent->d_name, "..") == 0)
   continue;





  if (ent->d_type == DT_REG)
   continue;
  pcap_snprintf(subsystem_path, sizeof subsystem_path,
      "/sys/class/net/%s/ifindex", ent->d_name);
  if (lstat(subsystem_path, &statb) != 0) {
   continue;
  }




  if (add_linux_if(devlistp, &ent->d_name[0], fd, errbuf) == -1) {

   ret = -1;
   break;
  }
 }
 if (ret != -1) {




  if (errno != 0) {
   pcap_fmt_errmsg_for_errno(errbuf, PCAP_ERRBUF_SIZE,
       errno, "Error reading /sys/class/net");
   ret = -1;
  }
 }

 (void)close(fd);
 (void)closedir(sys_class_net_d);
 return (ret);
}
