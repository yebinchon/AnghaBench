
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
typedef int netdissect_options ;


 int hex_and_ascii_print (int *,char*,int const*,int ) ;

__attribute__((used)) static void
ndo_default_print(netdissect_options *ndo, const u_char *bp, u_int length)
{
 hex_and_ascii_print(ndo, "\n\t", bp, length);
}
