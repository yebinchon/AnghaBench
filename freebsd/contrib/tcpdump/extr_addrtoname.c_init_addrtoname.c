
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef void* uint32_t ;
struct TYPE_8__ {scalar_t__ ndo_nflag; scalar_t__ ndo_fflag; } ;
typedef TYPE_1__ netdissect_options ;


 void* f_localnet ;
 void* f_netmask ;
 int init_eprotoarray (TYPE_1__*) ;
 int init_etherarray (TYPE_1__*) ;
 int init_ipxsaparray (TYPE_1__*) ;
 int init_protoidarray (TYPE_1__*) ;
 int init_servarray (TYPE_1__*) ;

void
init_addrtoname(netdissect_options *ndo, uint32_t localnet, uint32_t mask)
{
 if (ndo->ndo_fflag) {
  f_localnet = localnet;
  f_netmask = mask;
 }
 if (ndo->ndo_nflag)



  return;

 init_etherarray(ndo);
 init_servarray(ndo);
 init_eprotoarray(ndo);
 init_protoidarray(ndo);
 init_ipxsaparray(ndo);
}
