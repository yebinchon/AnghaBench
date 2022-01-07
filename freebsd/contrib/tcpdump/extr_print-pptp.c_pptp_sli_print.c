
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct pptp_msg_sli {int recv_accm; int send_accm; int reserved1; int peer_call_id; } ;
typedef int netdissect_options ;


 int EXTRACT_32BITS (int *) ;
 int ND_PRINT (int *) ;
 int ND_TCHECK (int ) ;
 int pptp_peer_call_id_print (int *,int *) ;
 int tstr ;

__attribute__((used)) static void
pptp_sli_print(netdissect_options *ndo,
               const u_char *dat)
{
 const struct pptp_msg_sli *ptr = (const struct pptp_msg_sli *)dat;

 ND_TCHECK(ptr->peer_call_id);
 pptp_peer_call_id_print(ndo, &ptr->peer_call_id);
 ND_TCHECK(ptr->reserved1);
 ND_TCHECK(ptr->send_accm);
 ND_PRINT((ndo, " SEND_ACCM(0x%08x)", EXTRACT_32BITS(&ptr->send_accm)));
 ND_TCHECK(ptr->recv_accm);
 ND_PRINT((ndo, " RECV_ACCM(0x%08x)", EXTRACT_32BITS(&ptr->recv_accm)));

 return;

trunc:
 ND_PRINT((ndo, "%s", tstr));
}
