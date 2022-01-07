
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sections; } ;
typedef TYPE_1__ svn_config_t ;
typedef int (* svn_config_section_enumerator2_t ) (int ,void*,int *) ;
struct TYPE_6__ {int name; } ;
typedef TYPE_2__ cfg_section_t ;
typedef int apr_pool_t ;
typedef int apr_hash_index_t ;


 int * apr_hash_first (int *,int ) ;
 int * apr_hash_next (int *) ;
 TYPE_2__* apr_hash_this_val (int *) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

int
svn_config_enumerate_sections2(svn_config_t *cfg,
                               svn_config_section_enumerator2_t callback,
                               void *baton, apr_pool_t *pool)
{
  apr_hash_index_t *sec_ndx;
  apr_pool_t *iteration_pool;
  int count = 0;

  iteration_pool = svn_pool_create(pool);
  for (sec_ndx = apr_hash_first(pool, cfg->sections);
       sec_ndx != ((void*)0);
       sec_ndx = apr_hash_next(sec_ndx))
    {
      cfg_section_t *sec = apr_hash_this_val(sec_ndx);

      ++count;
      svn_pool_clear(iteration_pool);
      if (!callback(sec->name, baton, iteration_pool))
        break;
    }
  svn_pool_destroy(iteration_pool);

  return count;
}
