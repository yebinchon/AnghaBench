
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
struct TYPE_4__ {int ndo_snapend; } ;
typedef TYPE_1__ netdissect_options ;


 int ND_TTEST2 (int const,int) ;
 scalar_t__ fn_printn (TYPE_1__*,int const*,int,int ) ;

__attribute__((used)) static const u_char *
ns_cprint(netdissect_options *ndo,
          register const u_char *cp)
{
 register u_int i;

 if (!ND_TTEST2(*cp, 1))
  return (((void*)0));
 i = *cp++;
 if (fn_printn(ndo, cp, i, ndo->ndo_snapend))
  return (((void*)0));
 return (cp + i);
}
