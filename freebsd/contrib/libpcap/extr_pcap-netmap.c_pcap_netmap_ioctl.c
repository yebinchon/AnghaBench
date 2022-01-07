
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_long ;
struct pcap_netmap {struct nm_desc* d; } ;
struct TYPE_4__ {int nr_name; } ;
struct nm_desc {int fd; TYPE_1__ req; } ;
struct ifreq {int ifr_flags; int ifr_flagshigh; int ifr_name; } ;
struct TYPE_5__ {struct pcap_netmap* priv; } ;
typedef TYPE_2__ pcap_t ;
typedef int ifr ;


 int AF_INET ;


 int SOCK_DGRAM ;
 int bzero (struct ifreq*,int) ;
 int close (int) ;
 int fprintf (int ,char*) ;
 int ioctl (int,int ,struct ifreq*) ;
 int socket (int ,int ,int ) ;
 int stderr ;
 int strncpy (int ,int ,int) ;

__attribute__((used)) static int
pcap_netmap_ioctl(pcap_t *p, u_long what, uint32_t *if_flags)
{
 struct pcap_netmap *pn = p->priv;
 struct nm_desc *d = pn->d;
 struct ifreq ifr;
 int error, fd = d->fd;


 fd = socket(AF_INET, SOCK_DGRAM, 0);
 if (fd < 0) {
  fprintf(stderr, "Error: cannot get device control socket.\n");
  return -1;
 }

 bzero(&ifr, sizeof(ifr));
 strncpy(ifr.ifr_name, d->req.nr_name, sizeof(ifr.ifr_name));
 switch (what) {
 case 128:
  ifr.ifr_flags = *if_flags & 0xffff;
  break;
 }
 error = ioctl(fd, what, &ifr);
 if (!error) {
  switch (what) {
  case 129:
   *if_flags = ifr.ifr_flags & 0xffff;
  }
 }

 close(fd);

 return error ? -1 : 0;
}
