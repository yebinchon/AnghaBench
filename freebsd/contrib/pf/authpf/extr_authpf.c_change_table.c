
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pfrt_name; } ;
struct pfr_addr {int pfrio_esize; int pfrio_size; int pfra_net; void* pfra_af; int pfra_ip6addr; int pfra_ip4addr; struct pfr_addr* pfrio_buffer; TYPE_1__ pfrio_table; } ;
struct pfioc_table {int pfrio_esize; int pfrio_size; int pfra_net; void* pfra_af; int pfra_ip6addr; int pfra_ip4addr; struct pfioc_table* pfrio_buffer; TYPE_1__ pfrio_table; } ;
typedef int io ;
typedef int addr ;


 void* AF_INET ;
 void* AF_INET6 ;
 int DIOCRADDADDRS ;
 int DIOCRDELADDRS ;
 scalar_t__ ESRCH ;
 int LOG_ERR ;
 int bzero (struct pfr_addr*,int) ;
 int dev ;
 scalar_t__ errno ;
 int inet_pton (void*,char const*,int *) ;
 scalar_t__ ioctl (int ,int ,struct pfr_addr*) ;
 int strerror (scalar_t__) ;
 int strlcpy (int ,int ,int) ;
 int syslog (int ,char*,...) ;
 int tablename ;

__attribute__((used)) static int
change_table(int add, const char *ip_src)
{
 struct pfioc_table io;
 struct pfr_addr addr;

 bzero(&io, sizeof(io));
 strlcpy(io.pfrio_table.pfrt_name, tablename,
     sizeof(io.pfrio_table.pfrt_name));
 io.pfrio_buffer = &addr;
 io.pfrio_esize = sizeof(addr);
 io.pfrio_size = 1;

 bzero(&addr, sizeof(addr));
 if (ip_src == ((void*)0) || !ip_src[0])
  return (-1);
 if (inet_pton(AF_INET, ip_src, &addr.pfra_ip4addr) == 1) {
  addr.pfra_af = AF_INET;
  addr.pfra_net = 32;
 } else if (inet_pton(AF_INET6, ip_src, &addr.pfra_ip6addr) == 1) {
  addr.pfra_af = AF_INET6;
  addr.pfra_net = 128;
 } else {
  syslog(LOG_ERR, "invalid ipsrc");
  return (-1);
 }

 if (ioctl(dev, add ? DIOCRADDADDRS : DIOCRDELADDRS, &io) &&
     errno != ESRCH) {
  syslog(LOG_ERR, "cannot %s %s from table %s: %s",
      add ? "add" : "remove", ip_src, tablename,
      strerror(errno));
  return (-1);
 }
 return (0);
}
