
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int netdissect_options ;


 int ND_PRINT (int *) ;
 int const* parse_post_op_attr (int *,int const*,int) ;
 int * parse_pre_op_attr (int *,int const*,int) ;

__attribute__((used)) static const uint32_t *
parse_wcc_data(netdissect_options *ndo,
               const uint32_t *dp, int verbose)
{
 if (verbose > 1)
  ND_PRINT((ndo, " PRE:"));
 if (!(dp = parse_pre_op_attr(ndo, dp, verbose)))
  return (0);

 if (verbose)
  ND_PRINT((ndo, " POST:"));
 return parse_post_op_attr(ndo, dp, verbose);
}
