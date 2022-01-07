
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int netdissect_options ;


 int * parse_wcc_data (int *,int const*,int) ;
 int * parsestatus (int *,int const*,int*) ;

__attribute__((used)) static int
parsewccres(netdissect_options *ndo,
            const uint32_t *dp, int verbose)
{
 int er;

 if (!(dp = parsestatus(ndo, dp, &er)))
  return (0);
 return parse_wcc_data(ndo, dp, verbose) != ((void*)0);
}
