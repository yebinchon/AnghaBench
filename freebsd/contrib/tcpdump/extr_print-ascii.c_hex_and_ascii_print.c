
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
typedef int netdissect_options ;


 int hex_and_ascii_print_with_offset (int *,char const*,int const*,int ,int ) ;

void
hex_and_ascii_print(netdissect_options *ndo, register const char *ident,
    register const u_char *cp, register u_int length)
{
 hex_and_ascii_print_with_offset(ndo, ident, cp, length, 0);
}
