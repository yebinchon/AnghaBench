
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct pcap_etherent {char* name; scalar_t__ addr; } ;
struct etherlist {int * name; scalar_t__ addr; } ;
struct ether_addr {int dummy; } ;
struct enamemem {int * e_name; } ;
struct TYPE_6__ {int (* ndo_error ) (TYPE_1__*,char*) ;} ;
typedef TYPE_1__ netdissect_options ;
typedef int FILE ;


 int PCAP_ETHERS_FILE ;
 scalar_t__ ether_ntohost (char*,struct ether_addr const*) ;
 struct etherlist* etherlist ;
 int fclose (int *) ;
 int * fopen (int ,char*) ;
 struct enamemem* lookup_emem (TYPE_1__*,scalar_t__) ;
 struct pcap_etherent* pcap_next_etherent (int *) ;
 void* strdup (char*) ;
 int stub1 (TYPE_1__*,char*) ;
 int stub2 (TYPE_1__*,char*) ;

__attribute__((used)) static void
init_etherarray(netdissect_options *ndo)
{
 register const struct etherlist *el;
 register struct enamemem *tp;



 register struct pcap_etherent *ep;
 register FILE *fp;


 fp = fopen(PCAP_ETHERS_FILE, "r");
 if (fp != ((void*)0)) {
  while ((ep = pcap_next_etherent(fp)) != ((void*)0)) {
   tp = lookup_emem(ndo, ep->addr);
   tp->e_name = strdup(ep->name);
   if (tp->e_name == ((void*)0))
    (*ndo->ndo_error)(ndo,
        "init_etherarray: strdup(ep->addr)");
  }
  (void)fclose(fp);
 }



 for (el = etherlist; el->name != ((void*)0); ++el) {
  tp = lookup_emem(ndo, el->addr);

  if (tp->e_name != ((void*)0))
   continue;
  tp->e_name = el->name;
 }
}
