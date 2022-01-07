
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct pptp_msg_icrq {int * subaddr; int * dialing_no; int * dialed_no; int * dialing_no_len; int * dialed_no_len; int * phy_chan_id; int * bearer_type; int * call_ser; int * call_id; } ;
typedef int netdissect_options ;


 int EXTRACT_16BITS (int **) ;
 int ND_PRINT (int *) ;
 int ND_TCHECK (int *) ;
 int pptp_bearer_type_print (int *,int **) ;
 int pptp_call_id_print (int *,int **) ;
 int pptp_call_ser_print (int *,int **) ;
 int pptp_phy_chan_id_print (int *,int **) ;
 int pptp_subaddr_print (int *,int *) ;
 int tstr ;

__attribute__((used)) static void
pptp_icrq_print(netdissect_options *ndo,
                const u_char *dat)
{
 const struct pptp_msg_icrq *ptr = (const struct pptp_msg_icrq *)dat;

 ND_TCHECK(ptr->call_id);
 pptp_call_id_print(ndo, &ptr->call_id);
 ND_TCHECK(ptr->call_ser);
 pptp_call_ser_print(ndo, &ptr->call_ser);
 ND_TCHECK(ptr->bearer_type);
 pptp_bearer_type_print(ndo, &ptr->bearer_type);
 ND_TCHECK(ptr->phy_chan_id);
 pptp_phy_chan_id_print(ndo, &ptr->phy_chan_id);
 ND_TCHECK(ptr->dialed_no_len);
 ND_PRINT((ndo, " DIALED_NO_LEN(%u)", EXTRACT_16BITS(&ptr->dialed_no_len)));
 ND_TCHECK(ptr->dialing_no_len);
 ND_PRINT((ndo, " DIALING_NO_LEN(%u)", EXTRACT_16BITS(&ptr->dialing_no_len)));
 ND_TCHECK(ptr->dialed_no);
 ND_PRINT((ndo, " DIALED_NO(%.64s)", ptr->dialed_no));
 ND_TCHECK(ptr->dialing_no);
 ND_PRINT((ndo, " DIALING_NO(%.64s)", ptr->dialing_no));
 ND_TCHECK(ptr->subaddr);
 pptp_subaddr_print(ndo, &ptr->subaddr[0]);

 return;

trunc:
 ND_PRINT((ndo, "%s", tstr));
}
