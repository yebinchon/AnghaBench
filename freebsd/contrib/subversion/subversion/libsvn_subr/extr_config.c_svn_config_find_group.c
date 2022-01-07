
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_config_t ;
struct search_groups_baton {char const* key; char const* match; int * pool; } ;
typedef int apr_pool_t ;


 int search_groups ;
 int svn_config_enumerate2 (int *,char const*,int ,struct search_groups_baton*,int *) ;

const char *svn_config_find_group(svn_config_t *cfg, const char *key,
                                  const char *master_section,
                                  apr_pool_t *pool)
{
  struct search_groups_baton gb;

  gb.key = key;
  gb.match = ((void*)0);
  gb.pool = pool;
  (void) svn_config_enumerate2(cfg, master_section, search_groups, &gb, pool);
  return gb.match;
}
