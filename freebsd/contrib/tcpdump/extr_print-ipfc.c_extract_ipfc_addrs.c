
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipfc_header {int * ipfc_shost; int * ipfc_dhost; } ;


 int memcpy (char*,char const*,int) ;

__attribute__((used)) static inline void
extract_ipfc_addrs(const struct ipfc_header *ipfcp, char *ipfcsrc,
    char *ipfcdst)
{




 memcpy(ipfcdst, (const char *)&ipfcp->ipfc_dhost[2], 6);
 memcpy(ipfcsrc, (const char *)&ipfcp->ipfc_shost[2], 6);
}
