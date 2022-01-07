
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_char ;
struct TYPE_5__ {int ndo_snapend; } ;
typedef TYPE_1__ netdissect_options ;


 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK (int const) ;
 int ND_TCHECK2 (int const,int) ;
 int NTOHL (int) ;
 scalar_t__ fn_printn (TYPE_1__*,int const*,int,int ) ;

__attribute__((used)) static const uint32_t *
parsefn(netdissect_options *ndo,
        register const uint32_t *dp)
{
 register uint32_t len;
 register const u_char *cp;


 ND_TCHECK(*dp);


 len = *dp++;
 NTOHL(len);

 ND_TCHECK2(*dp, ((len + 3) & ~3));

 cp = (const u_char *)dp;

 dp += ((len + 3) & ~3) / sizeof(*dp);
 ND_PRINT((ndo, "\""));
 if (fn_printn(ndo, cp, len, ndo->ndo_snapend)) {
  ND_PRINT((ndo, "\""));
  goto trunc;
 }
 ND_PRINT((ndo, "\""));

 return (dp);
trunc:
 return ((void*)0);
}
