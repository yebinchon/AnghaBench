
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_if {int avail_total; int* avail_ports; int maxout; struct port_comm** out; scalar_t__ inuse; int pfxlen; int addrlen; int addr; } ;
struct port_comm {int dummy; } ;


 int UNBOUND_DNS_PORT ;
 scalar_t__ calloc (size_t,int) ;
 int ipstrtoaddr (char const*,int ,int *,int *) ;
 scalar_t__ memdup (int*,size_t) ;
 int netblockstrtoaddr (char const*,int ,int *,int *,int *) ;

__attribute__((used)) static int setup_if(struct port_if* pif, const char* addrstr,
 int* avail, int numavail, size_t numfd)
{
 pif->avail_total = numavail;
 pif->avail_ports = (int*)memdup(avail, (size_t)numavail*sizeof(int));
 if(!pif->avail_ports)
  return 0;
 if(!ipstrtoaddr(addrstr, UNBOUND_DNS_PORT, &pif->addr, &pif->addrlen) &&
    !netblockstrtoaddr(addrstr, UNBOUND_DNS_PORT,
         &pif->addr, &pif->addrlen, &pif->pfxlen))
  return 0;
 pif->maxout = (int)numfd;
 pif->inuse = 0;
 pif->out = (struct port_comm**)calloc(numfd,
  sizeof(struct port_comm*));
 if(!pif->out)
  return 0;
 return 1;
}
