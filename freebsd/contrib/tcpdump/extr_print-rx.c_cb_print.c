
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
struct rx_header {int dummy; } ;
struct TYPE_4__ {int const* ndo_snapend; } ;
typedef TYPE_1__ netdissect_options ;
typedef int int32_t ;


 int AFSUUIDOUT () ;
 int DATEOUT () ;
 void* EXTRACT_32BITS (int const*) ;
 int FIDOUT () ;
 int INTOUT () ;
 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK2 (int const,int) ;
 int ND_TCHECK_32BITS (int const*) ;
 int cb_req ;
 int cb_types ;
 int tok2str (int ,char*,unsigned long) ;

__attribute__((used)) static void
cb_print(netdissect_options *ndo,
         register const u_char *bp, int length)
{
 int cb_op;
 unsigned long i;

 if (length <= (int)sizeof(struct rx_header))
  return;

 if (ndo->ndo_snapend - bp + 1 <= (int)(sizeof(struct rx_header) + sizeof(int32_t))) {
  goto trunc;
 }






 cb_op = EXTRACT_32BITS(bp + sizeof(struct rx_header));

 ND_PRINT((ndo, " cb call %s", tok2str(cb_req, "op#%d", cb_op)));

 bp += sizeof(struct rx_header) + 4;






 switch (cb_op) {
  case 204:
  {
   unsigned long j, t;
   ND_TCHECK2(bp[0], 4);
   j = EXTRACT_32BITS(bp);
   bp += sizeof(int32_t);

   for (i = 0; i < j; i++) {
    FIDOUT();
    if (i != j - 1)
     ND_PRINT((ndo, ","));
   }

   if (j == 0)
    ND_PRINT((ndo, " <none!>"));

   ND_TCHECK_32BITS(bp);
   j = EXTRACT_32BITS(bp);
   bp += sizeof(int32_t);

   if (j != 0)
    ND_PRINT((ndo, ";"));

   for (i = 0; i < j; i++) {
    ND_PRINT((ndo, " ver"));
    INTOUT();
    ND_PRINT((ndo, " expires"));
    DATEOUT();
    ND_TCHECK2(bp[0], 4);
    t = EXTRACT_32BITS(bp);
    bp += sizeof(int32_t);
    tok2str(cb_types, "type %d", t);
   }
  }
  case 214: {
   ND_PRINT((ndo, " afsuuid"));
   AFSUUIDOUT();
   break;
  }
  default:
   ;
 }

 return;

trunc:
 ND_PRINT((ndo, " [|cb]"));
}
