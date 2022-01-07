
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int u_int ;
typedef int u_char ;
typedef int netdissect_options ;


 int EXTRACT_16BITS (int const*) ;
 int EXTRACT_8BITS (int const*) ;
 int ND_PRINT (int *) ;
 int l2tp_cc_direction2str ;
 int print_string (int *,int const*,int) ;
 int tok2str (int ,char*,int ) ;

__attribute__((used)) static void
l2tp_ppp_discon_cc_print(netdissect_options *ndo, const u_char *dat, u_int length)
{
 const uint16_t *ptr = (const uint16_t *)dat;

 if (length < 5) {
  ND_PRINT((ndo, "AVP too short"));
  return;
 }

 ND_PRINT((ndo, "%04x, ", EXTRACT_16BITS(dat)));
 dat += 2;
 length -= 2;

 ND_PRINT((ndo, "%04x ", EXTRACT_16BITS(dat)));
 dat += 2;
 length -= 2;

 ND_PRINT((ndo, "%s", tok2str(l2tp_cc_direction2str,
        "Direction-#%u", EXTRACT_8BITS(ptr))));
 ptr++;
 length--;

 if (length != 0) {
  ND_PRINT((ndo, " "));
  print_string(ndo, (const u_char *)ptr, length);
 }
}
