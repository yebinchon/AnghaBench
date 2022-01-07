
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;


 int * parsefattr (TYPE_1__*,int const*,int ,int ) ;
 int * parsefh (TYPE_1__*,int const*,int ) ;
 int * parsestatus (TYPE_1__*,int const*,int*) ;

__attribute__((used)) static int
parsediropres(netdissect_options *ndo,
              const uint32_t *dp)
{
 int er;

 if (!(dp = parsestatus(ndo, dp, &er)))
  return (0);
 if (er)
  return (1);

 dp = parsefh(ndo, dp, 0);
 if (dp == ((void*)0))
  return (0);

 return (parsefattr(ndo, dp, ndo->ndo_vflag, 0) != ((void*)0));
}
