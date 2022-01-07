
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int u_int ;
typedef int u_char ;
typedef int netdissect_options ;


 int ND_PRINT (int *) ;
 int print_16bits_val (int *,int const*) ;
 int print_string (int *,int const*,int) ;

__attribute__((used)) static void
l2tp_q931_cc_print(netdissect_options *ndo, const u_char *dat, u_int length)
{
 if (length < 3) {
  ND_PRINT((ndo, "AVP too short"));
  return;
 }
 print_16bits_val(ndo, (const uint16_t *)dat);
 ND_PRINT((ndo, ", %02x", dat[2]));
 dat += 3;
 length -= 3;
 if (length != 0) {
  ND_PRINT((ndo, " "));
  print_string(ndo, dat, length);
 }
}
