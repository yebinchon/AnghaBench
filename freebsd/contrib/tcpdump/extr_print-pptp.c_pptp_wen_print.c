
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct pptp_msg_wen {int align_err; int timeout_err; int buffer_overrun; int hardware_overrun; int framing_err; int crc_err; int reserved1; int peer_call_id; } ;
typedef int netdissect_options ;


 int EXTRACT_32BITS (int *) ;
 int ND_PRINT (int *) ;
 int ND_TCHECK (int ) ;
 int pptp_peer_call_id_print (int *,int *) ;
 int tstr ;

__attribute__((used)) static void
pptp_wen_print(netdissect_options *ndo,
               const u_char *dat)
{
 const struct pptp_msg_wen *ptr = (const struct pptp_msg_wen *)dat;

 ND_TCHECK(ptr->peer_call_id);
 pptp_peer_call_id_print(ndo, &ptr->peer_call_id);
 ND_TCHECK(ptr->reserved1);
 ND_TCHECK(ptr->crc_err);
 ND_PRINT((ndo, " CRC_ERR(%u)", EXTRACT_32BITS(&ptr->crc_err)));
 ND_TCHECK(ptr->framing_err);
 ND_PRINT((ndo, " FRAMING_ERR(%u)", EXTRACT_32BITS(&ptr->framing_err)));
 ND_TCHECK(ptr->hardware_overrun);
 ND_PRINT((ndo, " HARDWARE_OVERRUN(%u)", EXTRACT_32BITS(&ptr->hardware_overrun)));
 ND_TCHECK(ptr->buffer_overrun);
 ND_PRINT((ndo, " BUFFER_OVERRUN(%u)", EXTRACT_32BITS(&ptr->buffer_overrun)));
 ND_TCHECK(ptr->timeout_err);
 ND_PRINT((ndo, " TIMEOUT_ERR(%u)", EXTRACT_32BITS(&ptr->timeout_err)));
 ND_TCHECK(ptr->align_err);
 ND_PRINT((ndo, " ALIGN_ERR(%u)", EXTRACT_32BITS(&ptr->align_err)));

 return;

trunc:
 ND_PRINT((ndo, "%s", tstr));
}
