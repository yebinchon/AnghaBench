
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int netdissect_options ;


 int ND_PRINT (int *) ;

__attribute__((used)) static void
ikev2_pay_print(netdissect_options *ndo, const char *payname, int critical)
{
 ND_PRINT((ndo,"%s%s:", payname, critical&0x80 ? "[C]" : ""));
}
