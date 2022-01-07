
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ u_int ;
typedef int u_char ;
struct mgmt_body_t {size_t reason_code; } ;
typedef int pbody ;
struct TYPE_5__ {scalar_t__ ndo_eflag; } ;
typedef TYPE_1__ netdissect_options ;


 size_t EXTRACT_LE_16BITS (int const*) ;
 scalar_t__ IEEE802_11_REASON_LEN ;
 int ND_PRINT (TYPE_1__*) ;
 int ND_TTEST2 (int const,scalar_t__) ;
 size_t NUM_REASONS ;
 int etheraddr_string (TYPE_1__*,int const*) ;
 int memset (struct mgmt_body_t*,int ,int) ;
 char** reason_text ;

__attribute__((used)) static int
handle_deauth(netdissect_options *ndo,
              const uint8_t *src, const u_char *p, u_int length)
{
 struct mgmt_body_t pbody;
 const char *reason = ((void*)0);

 memset(&pbody, 0, sizeof(pbody));

 if (!ND_TTEST2(*p, IEEE802_11_REASON_LEN))
  return 0;
 if (length < IEEE802_11_REASON_LEN)
  return 0;
 pbody.reason_code = EXTRACT_LE_16BITS(p);

 reason = (pbody.reason_code < NUM_REASONS)
   ? reason_text[pbody.reason_code]
   : "Reserved";

 if (ndo->ndo_eflag) {
  ND_PRINT((ndo, ": %s", reason));
 } else {
  ND_PRINT((ndo, " (%s): %s", etheraddr_string(ndo, src), reason));
 }
 return 1;
}
