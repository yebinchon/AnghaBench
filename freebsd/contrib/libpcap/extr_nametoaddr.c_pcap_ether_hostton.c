
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct pcap_etherent {int addr; int name; } ;
typedef int FILE ;


 int PCAP_ETHERS_FILE ;
 int * fopen (int ,char*) ;
 scalar_t__ malloc (int) ;
 int memcpy (int *,int ,int) ;
 struct pcap_etherent* pcap_next_etherent (int *) ;
 int rewind (int *) ;
 scalar_t__ strcmp (int ,char const*) ;

u_char *
pcap_ether_hostton(const char *name)
{
 register struct pcap_etherent *ep;
 register u_char *ap;
 static FILE *fp = ((void*)0);
 static int init = 0;

 if (!init) {
  fp = fopen(PCAP_ETHERS_FILE, "r");
  ++init;
  if (fp == ((void*)0))
   return (((void*)0));
 } else if (fp == ((void*)0))
  return (((void*)0));
 else
  rewind(fp);

 while ((ep = pcap_next_etherent(fp)) != ((void*)0)) {
  if (strcmp(ep->name, name) == 0) {
   ap = (u_char *)malloc(6);
   if (ap != ((void*)0)) {
    memcpy(ap, ep->addr, 6);
    return (ap);
   }
   break;
  }
 }
 return (((void*)0));
}
