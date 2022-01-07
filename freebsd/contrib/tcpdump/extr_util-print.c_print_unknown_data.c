
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_5__ {int const* ndo_snapend; } ;
typedef TYPE_1__ netdissect_options ;


 int ND_PRINT (TYPE_1__*) ;
 int hex_print (TYPE_1__*,char const*,int const*,int) ;

int
print_unknown_data(netdissect_options *ndo, const u_char *cp,const char *ident,int len)
{
 if (len < 0) {
          ND_PRINT((ndo,"%sDissector error: print_unknown_data called with negative length",
      ident));
  return(0);
 }
 if (ndo->ndo_snapend - cp < len)
  len = ndo->ndo_snapend - cp;
 if (len < 0) {
          ND_PRINT((ndo,"%sDissector error: print_unknown_data called with pointer past end of packet",
      ident));
  return(0);
 }
        hex_print(ndo, ident,cp,len);
 return(1);
}
