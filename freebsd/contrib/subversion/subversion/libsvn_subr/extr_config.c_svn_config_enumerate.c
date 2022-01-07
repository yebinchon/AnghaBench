
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int pool; } ;
typedef TYPE_1__ svn_config_t ;
typedef int (* svn_config_enumerator_t ) (int ,char const*,void*) ;
struct TYPE_12__ {int options; } ;
typedef TYPE_2__ cfg_section_t ;
struct TYPE_13__ {int name; } ;
typedef TYPE_3__ cfg_option_t ;
typedef int apr_pool_t ;
typedef int apr_hash_index_t ;


 int * apr_hash_first (int *,int ) ;
 int * apr_hash_next (int *) ;
 TYPE_3__* apr_hash_this_val (int *) ;
 int find_option (TYPE_1__*,char const*,int *,TYPE_2__**) ;
 int make_string_from_option (char const**,TYPE_1__*,TYPE_2__*,TYPE_3__*,int *) ;
 int * svn_pool_create (int ) ;
 int svn_pool_destroy (int *) ;

int
svn_config_enumerate(svn_config_t *cfg, const char *section,
                     svn_config_enumerator_t callback, void *baton)
{
  cfg_section_t *sec;
  apr_hash_index_t *opt_ndx;
  int count;
  apr_pool_t *subpool;

  find_option(cfg, section, ((void*)0), &sec);
  if (sec == ((void*)0))
    return 0;

  subpool = svn_pool_create(cfg->pool);
  count = 0;
  for (opt_ndx = apr_hash_first(subpool, sec->options);
       opt_ndx != ((void*)0);
       opt_ndx = apr_hash_next(opt_ndx))
    {
      cfg_option_t *opt = apr_hash_this_val(opt_ndx);
      const char *temp_value;

      ++count;
      make_string_from_option(&temp_value, cfg, sec, opt, ((void*)0));
      if (!callback(opt->name, temp_value, baton))
        break;
    }

  svn_pool_destroy(subpool);
  return count;
}
