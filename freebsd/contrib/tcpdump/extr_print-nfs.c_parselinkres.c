
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {int ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;


 int ND_PRINT (TYPE_1__*) ;
 int * parse_post_op_attr (TYPE_1__*,int const*,int ) ;
 int * parsefn (TYPE_1__*,int const*) ;
 int * parsestatus (TYPE_1__*,int const*,int*) ;

__attribute__((used)) static int
parselinkres(netdissect_options *ndo,
             const uint32_t *dp, int v3)
{
 int er;

 dp = parsestatus(ndo, dp, &er);
 if (dp == ((void*)0))
  return(0);
 if (er)
  return(1);
 if (v3 && !(dp = parse_post_op_attr(ndo, dp, ndo->ndo_vflag)))
  return (0);
 ND_PRINT((ndo, " "));
 return (parsefn(ndo, dp) != ((void*)0));
}
