
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u_int ;
typedef int u_char ;
struct radius_hdr {int * auth; int id; int code; int len; } ;
struct TYPE_5__ {int ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;


 scalar_t__ EXTRACT_16BITS (int *) ;
 scalar_t__ MIN_RADIUS_LEN ;
 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK2 (int const,scalar_t__) ;
 int radius_attrs_print (TYPE_1__*,int const*,scalar_t__) ;
 int radius_command_values ;
 int tok2str (int ,char*,int ) ;
 int tstr ;

void
radius_print(netdissect_options *ndo,
             const u_char *dat, u_int length)
{
   register const struct radius_hdr *rad;
   u_int len, auth_idx;

   ND_TCHECK2(*dat, MIN_RADIUS_LEN);
   rad = (const struct radius_hdr *)dat;
   len = EXTRACT_16BITS(&rad->len);

   if (len < MIN_RADIUS_LEN)
   {
   ND_PRINT((ndo, "%s", tstr));
   return;
   }

   if (len > length)
   len = length;

   if (ndo->ndo_vflag < 1) {
       ND_PRINT((ndo, "RADIUS, %s (%u), id: 0x%02x length: %u",
              tok2str(radius_command_values,"Unknown Command",rad->code),
              rad->code,
              rad->id,
              len));
       return;
   }
   else {
       ND_PRINT((ndo, "RADIUS, length: %u\n\t%s (%u), id: 0x%02x, Authenticator: ",
              len,
              tok2str(radius_command_values,"Unknown Command",rad->code),
              rad->code,
              rad->id));

       for(auth_idx=0; auth_idx < 16; auth_idx++)
            ND_PRINT((ndo, "%02x", rad->auth[auth_idx]));
   }

   if (len > MIN_RADIUS_LEN)
      radius_attrs_print(ndo, dat + MIN_RADIUS_LEN, len - MIN_RADIUS_LEN);
   return;

trunc:
   ND_PRINT((ndo, "%s", tstr));
}
