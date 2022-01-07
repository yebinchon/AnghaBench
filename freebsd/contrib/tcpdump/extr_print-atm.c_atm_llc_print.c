
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
struct TYPE_4__ {int ndo_suppress_default_print; } ;
typedef TYPE_1__ netdissect_options ;


 int ND_DEFAULTPRINT (int const*,int) ;
 int llc_print (TYPE_1__*,int const*,int,int,int *,int *) ;

__attribute__((used)) static u_int
atm_llc_print(netdissect_options *ndo,
              const u_char *p, int length, int caplen)
{
 int llc_hdrlen;

 llc_hdrlen = llc_print(ndo, p, length, caplen, ((void*)0), ((void*)0));
 if (llc_hdrlen < 0) {

  if (!ndo->ndo_suppress_default_print)
   ND_DEFAULTPRINT(p, caplen);
  llc_hdrlen = -llc_hdrlen;
 }
 return (llc_hdrlen);
}
