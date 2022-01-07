
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
typedef int netdissect_options ;


 int ND_PRINT (int *) ;
 int * of_header_body_print (int *,int const*,int const*) ;

void
openflow_print(netdissect_options *ndo, const u_char *cp, const u_int len)
{
 const u_char *ep = cp + len;

 ND_PRINT((ndo, ": OpenFlow"));
 while (cp < ep)
  cp = of_header_body_print(ndo, cp, ep);
}
