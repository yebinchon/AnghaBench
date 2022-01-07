
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int const u_int ;
typedef int u_char ;
struct m3ua_param_header {int dummy; } ;
typedef int netdissect_options ;


 int EXTRACT_32BITS (int const*) ;



 int ND_PRINT (int *) ;
 int ND_TCHECK2 (int const,int const) ;
 int istr ;
 int tstr ;

__attribute__((used)) static void
tag_value_print(netdissect_options *ndo,
                const u_char *buf, const uint16_t tag, const uint16_t size)
{
  switch (tag) {
  case 129:
  case 128:
  case 130:

    if (size < 4)
      goto invalid;
    ND_TCHECK2(*buf, size);
    ND_PRINT((ndo, "0x%08x", EXTRACT_32BITS(buf)));
    break;

  default:
    ND_PRINT((ndo, "(length %u)", size + (u_int)sizeof(struct m3ua_param_header)));
    ND_TCHECK2(*buf, size);
  }
  return;

invalid:
  ND_PRINT((ndo, "%s", istr));
  ND_TCHECK2(*buf, size);
  return;
trunc:
  ND_PRINT((ndo, "%s", tstr));
}
