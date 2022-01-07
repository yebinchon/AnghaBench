
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifreq {int ifr_flags; int ifr_name; } ;
typedef int pcap_if_list_t ;


 scalar_t__ ENODEV ;
 scalar_t__ ENXIO ;
 int PCAP_ERRBUF_SIZE ;
 int SIOCGIFFLAGS ;
 scalar_t__ errno ;
 int * find_or_add_if (int *,char*,int ,int ,char*) ;
 int get_if_flags ;
 scalar_t__ ioctl (int,int ,char*) ;
 scalar_t__ isascii (char const) ;
 scalar_t__ isdigit (char const) ;
 int isspace (char const) ;
 int pcap_fmt_errmsg_for_errno (char*,int ,scalar_t__,char*,int,int ) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static int
add_linux_if(pcap_if_list_t *devlistp, const char *ifname, int fd, char *errbuf)
{
 const char *p;
 char name[512];
 char *q, *saveq;
 struct ifreq ifrflags;




 p = ifname;
 q = &name[0];
 while (*p != '\0' && isascii(*p) && !isspace(*p)) {
  if (*p == ':') {
   saveq = q;
   while (isascii(*p) && isdigit(*p))
    *q++ = *p++;
   if (*p != ':') {




    q = saveq;
   }
   break;
  } else
   *q++ = *p++;
 }
 *q = '\0';




 strlcpy(ifrflags.ifr_name, name, sizeof(ifrflags.ifr_name));
 if (ioctl(fd, SIOCGIFFLAGS, (char *)&ifrflags) < 0) {
  if (errno == ENXIO || errno == ENODEV)
   return (0);
  pcap_fmt_errmsg_for_errno(errbuf, PCAP_ERRBUF_SIZE,
      errno, "SIOCGIFFLAGS: %.*s",
      (int)sizeof(ifrflags.ifr_name),
      ifrflags.ifr_name);
  return (-1);
 }





 if (find_or_add_if(devlistp, name, ifrflags.ifr_flags,
     get_if_flags, errbuf) == ((void*)0)) {



  return (-1);
 }

 return (0);
}
