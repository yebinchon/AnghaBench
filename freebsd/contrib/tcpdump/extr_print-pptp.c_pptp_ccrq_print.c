
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct pptp_msg_ccrq {int reserved1; int call_id; } ;
typedef int netdissect_options ;


 int ND_PRINT (int *) ;
 int ND_TCHECK (int ) ;
 int pptp_call_id_print (int *,int *) ;
 int tstr ;

__attribute__((used)) static void
pptp_ccrq_print(netdissect_options *ndo,
                const u_char *dat)
{
 const struct pptp_msg_ccrq *ptr = (const struct pptp_msg_ccrq *)dat;

 ND_TCHECK(ptr->call_id);
 pptp_call_id_print(ndo, &ptr->call_id);
 ND_TCHECK(ptr->reserved1);

 return;

trunc:
 ND_PRINT((ndo, "%s", tstr));
}
