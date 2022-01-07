
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
typedef int netdissect_options ;


 int hex_print_with_offset (int *,char const*,int const*,int ,int ) ;

void
hex_print(netdissect_options *ndo,const char *ident, const u_char *cp, u_int length)
{
  hex_print_with_offset(ndo, ident, cp, length, 0);
}
