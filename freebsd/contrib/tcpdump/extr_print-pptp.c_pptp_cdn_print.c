
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct pptp_msg_cdn {int call_stats; int reserved1; int cause_code; int err_code; int result_code; int call_id; } ;
typedef int netdissect_options ;


 int ND_PRINT (int *) ;
 int ND_TCHECK (int ) ;
 int PPTP_CTRL_MSG_TYPE_CDN ;
 int pptp_call_id_print (int *,int *) ;
 int pptp_cause_code_print (int *,int *) ;
 int pptp_err_code_print (int *,int *) ;
 int pptp_result_code_print (int *,int *,int ) ;
 int tstr ;

__attribute__((used)) static void
pptp_cdn_print(netdissect_options *ndo,
               const u_char *dat)
{
 const struct pptp_msg_cdn *ptr = (const struct pptp_msg_cdn *)dat;

 ND_TCHECK(ptr->call_id);
 pptp_call_id_print(ndo, &ptr->call_id);
 ND_TCHECK(ptr->result_code);
 pptp_result_code_print(ndo, &ptr->result_code, PPTP_CTRL_MSG_TYPE_CDN);
 ND_TCHECK(ptr->err_code);
 pptp_err_code_print(ndo, &ptr->err_code);
 ND_TCHECK(ptr->cause_code);
 pptp_cause_code_print(ndo, &ptr->cause_code);
 ND_TCHECK(ptr->reserved1);
 ND_TCHECK(ptr->call_stats);
 ND_PRINT((ndo, " CALL_STATS(%.128s)", ptr->call_stats));

 return;

trunc:
 ND_PRINT((ndo, "%s", tstr));
}
