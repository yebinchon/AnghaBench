
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int svn_config_t ;
typedef int (* svn_config_enumerator2_t ) (int ,char const*,void*,int *) ;
struct TYPE_7__ {int options; } ;
typedef TYPE_1__ cfg_section_t ;
struct TYPE_8__ {int name; } ;
typedef TYPE_2__ cfg_option_t ;
typedef int apr_pool_t ;
typedef int apr_hash_index_t ;


 int * apr_hash_first (int *,int ) ;
 int * apr_hash_next (int *) ;
 TYPE_2__* apr_hash_this_val (int *) ;
 int find_option (int *,char const*,int *,TYPE_1__**) ;
 int make_string_from_option (char const**,int *,TYPE_1__*,TYPE_2__*,int *) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

int
svn_config_enumerate2(svn_config_t *cfg, const char *section,
                      svn_config_enumerator2_t callback, void *baton,
                      apr_pool_t *pool)
{
  cfg_section_t *sec;
  apr_hash_index_t *opt_ndx;
  apr_pool_t *iteration_pool;
  int count;

  find_option(cfg, section, ((void*)0), &sec);
  if (sec == ((void*)0))
    return 0;

  iteration_pool = svn_pool_create(pool);
  count = 0;
  for (opt_ndx = apr_hash_first(pool, sec->options);
       opt_ndx != ((void*)0);
       opt_ndx = apr_hash_next(opt_ndx))
    {
      cfg_option_t *opt = apr_hash_this_val(opt_ndx);
      const char *temp_value;

      ++count;
      make_string_from_option(&temp_value, cfg, sec, opt, ((void*)0));
      svn_pool_clear(iteration_pool);
      if (!callback(opt->name, temp_value, baton, iteration_pool))
        break;
    }
  svn_pool_destroy(iteration_pool);

  return count;
}
