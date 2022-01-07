
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct sockaddr_in {int sin_family; int sin_addr; } ;
struct snf_ifaddrs {int snf_ifa_portnum; char* snf_ifa_name; struct snf_ifaddrs* snf_ifa_next; } ;
struct TYPE_5__ {char* description; int name; } ;
typedef TYPE_1__ pcap_if_t ;
typedef int pcap_if_list_t ;
typedef int addr ;


 int AF_INET ;
 int MAX_DESC_LENGTH ;
 int PCAP_ERRBUF_SIZE ;
 int PCAP_IF_CONNECTION_STATUS_NOT_APPLICABLE ;
 int SNF_F_AGGREGATE_PORTMASK ;
 int SNF_VERSION_API ;
 int add_addr_to_dev (TYPE_1__*,struct sockaddr_in*,int,int *,int ,int *,int ,int *,int ,char*) ;
 TYPE_1__* add_dev (int *,char*,int ,char*,char*) ;
 scalar_t__ errno ;
 TYPE_1__* find_dev (int *,char*) ;
 int free (char*) ;
 char* getenv (char*) ;
 int inet_pton (int ,int ,int *) ;
 int pcap_fmt_errmsg_for_errno (char*,int ,scalar_t__,char*) ;
 int pcap_snprintf (char*,int,char*,...) ;
 int snf_freeifaddrs (struct snf_ifaddrs*) ;
 scalar_t__ snf_getifaddrs (struct snf_ifaddrs**) ;
 scalar_t__ snf_init (int ) ;
 char* strdup (char*) ;
 int strtol (char const*,int *,int ) ;

int
snf_findalldevs(pcap_if_list_t *devlistp, char *errbuf)
{
 pcap_if_t *dev;



 struct snf_ifaddrs *ifaddrs, *ifa;
 char name[MAX_DESC_LENGTH];
 char desc[MAX_DESC_LENGTH];
 int ret, allports = 0, merge = 0;
 const char *nr = ((void*)0);

 if (snf_init(SNF_VERSION_API)) {
  (void)pcap_snprintf(errbuf, PCAP_ERRBUF_SIZE,
      "snf_getifaddrs: snf_init failed");
  return (-1);
 }

 if (snf_getifaddrs(&ifaddrs) || ifaddrs == ((void*)0))
 {
  pcap_fmt_errmsg_for_errno(errbuf, PCAP_ERRBUF_SIZE,
      errno, "snf_getifaddrs");
  return (-1);
 }
 if ((nr = getenv("SNF_FLAGS")) && *nr) {
  errno = 0;
  merge = strtol(nr, ((void*)0), 0);
  if (errno) {
   (void)pcap_snprintf(errbuf, PCAP_ERRBUF_SIZE,
    "snf_getifaddrs: SNF_FLAGS is not a valid number");
   return (-1);
  }
  merge = merge & SNF_F_AGGREGATE_PORTMASK;
 }

 for (ifa = ifaddrs; ifa != ((void*)0); ifa = ifa->snf_ifa_next) {
  (void)pcap_snprintf(desc,MAX_DESC_LENGTH,"Myricom %ssnf%d",
   merge ? "Merge Bitmask Port " : "",
   merge ? 1 << ifa->snf_ifa_portnum : ifa->snf_ifa_portnum);



  if (merge)
   allports |= 1 << ifa->snf_ifa_portnum;




  dev = find_dev(devlistp, ifa->snf_ifa_name);
  if (dev != ((void*)0)) {



   char *desc_str;

   desc_str = strdup(desc);
   if (desc_str == ((void*)0)) {
    pcap_fmt_errmsg_for_errno(errbuf,
        PCAP_ERRBUF_SIZE, errno,
        "snf_findalldevs strdup");
    return -1;
   }
   free(dev->description);
   dev->description = desc_str;
  } else {
   dev = add_dev(devlistp, ifa->snf_ifa_name, 0, desc,
       errbuf);
   if (dev == ((void*)0))
    return -1;
  }
 }
 snf_freeifaddrs(ifaddrs);



 if (merge) {



  (void)pcap_snprintf(name,MAX_DESC_LENGTH,"snf%d",allports);
  (void)pcap_snprintf(desc,MAX_DESC_LENGTH,"Myricom Merge Bitmask All Ports snf%d",
   allports);
  if (add_dev(devlistp, name,
      PCAP_IF_CONNECTION_STATUS_NOT_APPLICABLE, desc,
      errbuf) == ((void*)0))
   return (-1);




 }

 return 0;
}
