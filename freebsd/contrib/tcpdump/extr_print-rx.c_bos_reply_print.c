
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
 int bos_req ;
 int tok2str (int ,char*,int ) ;

__attribute__((used)) static void
bos_reply_print(netdissect_options *ndo,
                register const u_char *bp, int length, int32_t opcode)
{
 const struct rx_header *rxh;

 if (length <= (int)sizeof(struct rx_header))
  return;

 rxh = (const struct rx_header *) bp;






 ND_PRINT((ndo, " bos reply %s", tok2str(bos_req, "op#%d", opcode)));

 bp += sizeof(struct rx_header);





 if (rxh->type == RX_PACKET_TYPE_DATA)

  ;
 else {



  ND_PRINT((ndo, " errcode"));
  INTOUT();
 }

 return;

trunc:
 ND_PRINT((ndo, " [|bos]"));
}
