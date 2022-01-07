
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct pptp_msg_echorq {int id; } ;
typedef int netdissect_options ;


 int ND_PRINT (int *) ;
 int ND_TCHECK (int ) ;
 int pptp_id_print (int *,int *) ;
 int tstr ;

__attribute__((used)) static void
pptp_echorq_print(netdissect_options *ndo,
                  const u_char *dat)
{
 const struct pptp_msg_echorq *ptr = (const struct pptp_msg_echorq *)dat;

 ND_TCHECK(ptr->id);
 pptp_id_print(ndo, &ptr->id);

 return;

trunc:
 ND_PRINT((ndo, "%s", tstr));
}
