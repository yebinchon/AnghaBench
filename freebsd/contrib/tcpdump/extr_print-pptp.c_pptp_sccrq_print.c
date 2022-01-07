
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct pptp_msg_sccrq {int * vendor; int * hostname; int * firm_rev; int * max_channel; int * bearer_cap; int * framing_cap; int * reserved1; int * proto_ver; } ;
typedef int netdissect_options ;


 int ND_PRINT (int *) ;
 int ND_TCHECK (int *) ;
 int pptp_bearer_cap_print (int *,int **) ;
 int pptp_firm_rev_print (int *,int **) ;
 int pptp_framing_cap_print (int *,int **) ;
 int pptp_hostname_print (int *,int *) ;
 int pptp_max_channel_print (int *,int **) ;
 int pptp_proto_ver_print (int *,int **) ;
 int pptp_vendor_print (int *,int *) ;
 int tstr ;

__attribute__((used)) static void
pptp_sccrq_print(netdissect_options *ndo,
                 const u_char *dat)
{
 const struct pptp_msg_sccrq *ptr = (const struct pptp_msg_sccrq *)dat;

 ND_TCHECK(ptr->proto_ver);
 pptp_proto_ver_print(ndo, &ptr->proto_ver);
 ND_TCHECK(ptr->reserved1);
 ND_TCHECK(ptr->framing_cap);
 pptp_framing_cap_print(ndo, &ptr->framing_cap);
 ND_TCHECK(ptr->bearer_cap);
 pptp_bearer_cap_print(ndo, &ptr->bearer_cap);
 ND_TCHECK(ptr->max_channel);
 pptp_max_channel_print(ndo, &ptr->max_channel);
 ND_TCHECK(ptr->firm_rev);
 pptp_firm_rev_print(ndo, &ptr->firm_rev);
 ND_TCHECK(ptr->hostname);
 pptp_hostname_print(ndo, &ptr->hostname[0]);
 ND_TCHECK(ptr->vendor);
 pptp_vendor_print(ndo, &ptr->vendor[0]);

 return;

trunc:
 ND_PRINT((ndo, "%s", tstr));
}
