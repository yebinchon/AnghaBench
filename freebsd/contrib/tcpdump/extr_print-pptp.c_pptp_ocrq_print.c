
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct pptp_msg_ocrq {int * subaddr; int * phone_no; int * reserved1; int * phone_no_len; int * pkt_proc_delay; int * recv_winsiz; int * framing_type; int * bearer_type; int * max_bps; int * min_bps; int * call_ser; int * call_id; } ;
typedef int netdissect_options ;


 int EXTRACT_16BITS (int **) ;
 int EXTRACT_32BITS (int **) ;
 int ND_PRINT (int *) ;
 int ND_TCHECK (int *) ;
 int pptp_bearer_type_print (int *,int **) ;
 int pptp_call_id_print (int *,int **) ;
 int pptp_call_ser_print (int *,int **) ;
 int pptp_framing_type_print (int *,int **) ;
 int pptp_pkt_proc_delay_print (int *,int **) ;
 int pptp_recv_winsiz_print (int *,int **) ;
 int pptp_subaddr_print (int *,int *) ;
 int tstr ;

__attribute__((used)) static void
pptp_ocrq_print(netdissect_options *ndo,
                const u_char *dat)
{
 const struct pptp_msg_ocrq *ptr = (const struct pptp_msg_ocrq *)dat;

 ND_TCHECK(ptr->call_id);
 pptp_call_id_print(ndo, &ptr->call_id);
 ND_TCHECK(ptr->call_ser);
 pptp_call_ser_print(ndo, &ptr->call_ser);
 ND_TCHECK(ptr->min_bps);
 ND_PRINT((ndo, " MIN_BPS(%u)", EXTRACT_32BITS(&ptr->min_bps)));
 ND_TCHECK(ptr->max_bps);
 ND_PRINT((ndo, " MAX_BPS(%u)", EXTRACT_32BITS(&ptr->max_bps)));
 ND_TCHECK(ptr->bearer_type);
 pptp_bearer_type_print(ndo, &ptr->bearer_type);
 ND_TCHECK(ptr->framing_type);
 pptp_framing_type_print(ndo, &ptr->framing_type);
 ND_TCHECK(ptr->recv_winsiz);
 pptp_recv_winsiz_print(ndo, &ptr->recv_winsiz);
 ND_TCHECK(ptr->pkt_proc_delay);
 pptp_pkt_proc_delay_print(ndo, &ptr->pkt_proc_delay);
 ND_TCHECK(ptr->phone_no_len);
 ND_PRINT((ndo, " PHONE_NO_LEN(%u)", EXTRACT_16BITS(&ptr->phone_no_len)));
 ND_TCHECK(ptr->reserved1);
 ND_TCHECK(ptr->phone_no);
 ND_PRINT((ndo, " PHONE_NO(%.64s)", ptr->phone_no));
 ND_TCHECK(ptr->subaddr);
 pptp_subaddr_print(ndo, &ptr->subaddr[0]);

 return;

trunc:
 ND_PRINT((ndo, "%s", tstr));
}
