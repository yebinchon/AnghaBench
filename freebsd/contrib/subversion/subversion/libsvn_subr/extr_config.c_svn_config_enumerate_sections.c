
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sections; int x_pool; } ;
typedef TYPE_1__ svn_config_t ;
typedef int (* svn_config_section_enumerator_t ) (int ,void*) ;
struct TYPE_5__ {int name; } ;
typedef TYPE_2__ cfg_section_t ;
typedef int apr_pool_t ;
typedef int apr_hash_index_t ;


 int * apr_hash_first (int *,int ) ;
 int * apr_hash_next (int *) ;
 int apr_hash_this (int *,int *,int *,void**) ;
 int * svn_pool_create (int ) ;
 int svn_pool_destroy (int *) ;

int
svn_config_enumerate_sections(svn_config_t *cfg,
                              svn_config_section_enumerator_t callback,
                              void *baton)
{
  apr_hash_index_t *sec_ndx;
  int count = 0;
  apr_pool_t *subpool = svn_pool_create(cfg->x_pool);

  for (sec_ndx = apr_hash_first(subpool, cfg->sections);
       sec_ndx != ((void*)0);
       sec_ndx = apr_hash_next(sec_ndx))
    {
      void *sec_ptr;
      cfg_section_t *sec;

      apr_hash_this(sec_ndx, ((void*)0), ((void*)0), &sec_ptr);
      sec = sec_ptr;
      ++count;
      if (!callback(sec->name, baton))
        break;
    }

  svn_pool_destroy(subpool);
  return count;
}
