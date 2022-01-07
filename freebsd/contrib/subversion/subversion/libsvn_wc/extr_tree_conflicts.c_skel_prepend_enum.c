
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_token_map_t ;
typedef int svn_skel_t ;
typedef int apr_pool_t ;


 int svn_skel__prepend (int ,int *) ;
 int svn_skel__str_atom (int ,int *) ;
 int svn_token__to_word (int const*,int) ;

__attribute__((used)) static void
skel_prepend_enum(svn_skel_t *skel,
                  const svn_token_map_t *map,
                  int n,
                  apr_pool_t *result_pool)
{
  svn_skel__prepend(svn_skel__str_atom(svn_token__to_word(map, n),
                                       result_pool), skel);
}
