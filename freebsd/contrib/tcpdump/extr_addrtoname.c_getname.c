
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_char ;
struct hostent {int h_name; } ;
struct hnamemem {int addr; char const* name; struct hnamemem* nxt; } ;
struct TYPE_6__ {int (* ndo_error ) (TYPE_1__*,char*) ;scalar_t__ ndo_Nflag; int ndo_nflag; } ;
typedef TYPE_1__ netdissect_options ;
typedef int addr ;


 int AF_INET ;
 int HASHNAMESIZE ;
 struct hostent* cap_gethostbyaddr (int *,char*,int,int ) ;
 int * capdns ;
 int f_localnet ;
 int f_netmask ;
 struct hostent* gethostbyaddr (char*,int,int ) ;
 struct hnamemem* hnametable ;
 int intoa (int) ;
 int memcpy (int*,int const*,int) ;
 struct hnamemem* newhnamemem (TYPE_1__*) ;
 char* strchr (char const*,char) ;
 void* strdup (int ) ;
 int stub1 (TYPE_1__*,char*) ;
 int stub2 (TYPE_1__*,char*) ;

const char *
getname(netdissect_options *ndo, const u_char *ap)
{
 register struct hostent *hp;
 uint32_t addr;
 struct hnamemem *p;

 memcpy(&addr, ap, sizeof(addr));
 p = &hnametable[addr & (HASHNAMESIZE-1)];
 for (; p->nxt; p = p->nxt) {
  if (p->addr == addr)
   return (p->name);
 }
 p->addr = addr;
 p->nxt = newhnamemem(ndo);
 if (!ndo->ndo_nflag &&
     (addr & f_netmask) == f_localnet) {






   hp = gethostbyaddr((char *)&addr, 4, AF_INET);
  if (hp) {
   char *dotp;

   p->name = strdup(hp->h_name);
   if (p->name == ((void*)0))
    (*ndo->ndo_error)(ndo,
        "getname: strdup(hp->h_name)");
   if (ndo->ndo_Nflag) {

    dotp = strchr(p->name, '.');
    if (dotp)
     *dotp = '\0';
   }
   return (p->name);
  }
 }
 p->name = strdup(intoa(addr));
 if (p->name == ((void*)0))
  (*ndo->ndo_error)(ndo, "getname: strdup(intoa(addr))");
 return (p->name);
}
