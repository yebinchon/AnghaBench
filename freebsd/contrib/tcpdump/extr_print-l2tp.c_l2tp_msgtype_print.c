
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int u_int ;
typedef int u_char ;
typedef int netdissect_options ;


 int EXTRACT_16BITS (int const*) ;
 int ND_PRINT (int *) ;
 int l2tp_msgtype2str ;
 int tok2str (int ,char*,int ) ;

__attribute__((used)) static void
l2tp_msgtype_print(netdissect_options *ndo, const u_char *dat, u_int length)
{
 const uint16_t *ptr = (const uint16_t *)dat;

 if (length < 2) {
  ND_PRINT((ndo, "AVP too short"));
  return;
 }
 ND_PRINT((ndo, "%s", tok2str(l2tp_msgtype2str, "MSGTYPE-#%u",
     EXTRACT_16BITS(ptr))));
}
