
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int netdissect_options ;


 int * parsefattr (int *,int const*,int,int) ;
 int * parsestatus (int *,int const*,int*) ;

__attribute__((used)) static int
parseattrstat(netdissect_options *ndo,
              const uint32_t *dp, int verbose, int v3)
{
 int er;

 dp = parsestatus(ndo, dp, &er);
 if (dp == ((void*)0))
  return (0);
 if (er)
  return (1);

 return (parsefattr(ndo, dp, verbose, v3) != ((void*)0));
}
