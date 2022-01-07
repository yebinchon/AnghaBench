
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct pptp_msg_iccn {int framing_type; int pkt_proc_delay; int recv_winsiz; int conn_speed; int reserved1; int peer_call_id; } ;
typedef int netdissect_options ;


 int ND_PRINT (int *) ;
 int ND_TCHECK (int ) ;
 int pptp_conn_speed_print (int *,int *) ;
 int pptp_framing_type_print (int *,int *) ;
 int pptp_peer_call_id_print (int *,int *) ;
 int pptp_pkt_proc_delay_print (int *,int *) ;
 int pptp_recv_winsiz_print (int *,int *) ;
 int tstr ;

__attribute__((used)) static void
pptp_iccn_print(netdissect_options *ndo,
                const u_char *dat)
{
 const struct pptp_msg_iccn *ptr = (const struct pptp_msg_iccn *)dat;

 ND_TCHECK(ptr->peer_call_id);
 pptp_peer_call_id_print(ndo, &ptr->peer_call_id);
 ND_TCHECK(ptr->reserved1);
 ND_TCHECK(ptr->conn_speed);
 pptp_conn_speed_print(ndo, &ptr->conn_speed);
 ND_TCHECK(ptr->recv_winsiz);
 pptp_recv_winsiz_print(ndo, &ptr->recv_winsiz);
 ND_TCHECK(ptr->pkt_proc_delay);
 pptp_pkt_proc_delay_print(ndo, &ptr->pkt_proc_delay);
 ND_TCHECK(ptr->framing_type);
 pptp_framing_type_print(ndo, &ptr->framing_type);

 return;

trunc:
 ND_PRINT((ndo, "%s", tstr));
}
