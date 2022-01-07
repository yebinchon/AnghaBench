
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct rx_header {scalar_t__ type; } ;
typedef int netdissect_options ;
typedef int int32_t ;


 int INTOUT () ;
 int ND_PRINT (int *) ;
 scalar_t__ RX_PACKET_TYPE_DATA ;
 scalar_t__ is_ubik (int ) ;
 int kauth_req ;
 int tok2str (int ,char*,int ) ;
 int ubik_reply_print (int *,int const*,int,int ) ;

__attribute__((used)) static void
kauth_reply_print(netdissect_options *ndo,
                  register const u_char *bp, int length, int32_t opcode)
{
 const struct rx_header *rxh;

 if (length <= (int)sizeof(struct rx_header))
  return;

 rxh = (const struct rx_header *) bp;






 ND_PRINT((ndo, " kauth"));

 if (is_ubik(opcode)) {
  ubik_reply_print(ndo, bp, length, opcode);
  return;
 }

 ND_PRINT((ndo, " reply %s", tok2str(kauth_req, "op#%d", opcode)));

 bp += sizeof(struct rx_header);





 if (rxh->type == RX_PACKET_TYPE_DATA)

  ;
 else {



  ND_PRINT((ndo, " errcode"));
  INTOUT();
 }

 return;

trunc:
 ND_PRINT((ndo, " [|kauth]"));
}
