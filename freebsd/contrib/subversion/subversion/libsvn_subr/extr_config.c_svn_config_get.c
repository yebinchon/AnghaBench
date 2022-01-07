
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* tmp_value; int pool; } ;
typedef TYPE_1__ svn_config_t ;
typedef int cfg_section_t ;
typedef int cfg_option_t ;
typedef int apr_pool_t ;
struct TYPE_8__ {char* data; } ;


 int expand_option_value (TYPE_1__*,int *,char const*,char const**,int *) ;
 int * find_option (TYPE_1__*,char const*,char const*,int **) ;
 int make_string_from_option (char const**,TYPE_1__*,int *,int *,int *) ;
 scalar_t__ strchr (char const*,char) ;
 int * svn_pool_create (int ) ;
 int svn_pool_destroy (int *) ;
 int svn_stringbuf_set (TYPE_2__*,char const*) ;

void
svn_config_get(svn_config_t *cfg, const char **valuep,
               const char *section, const char *option,
               const char *default_value)
{
  *valuep = default_value;
  if (cfg)
    {
      cfg_section_t *sec;
      cfg_option_t *opt = find_option(cfg, section, option, &sec);
      if (opt != ((void*)0))
        {
          make_string_from_option(valuep, cfg, sec, opt, ((void*)0));
        }
      else



        if (default_value && strchr(default_value, '%'))
          {
            apr_pool_t *tmp_pool = svn_pool_create(cfg->pool);
            const char *x_default;
            if (!expand_option_value(cfg, sec, default_value, &x_default,
                                     tmp_pool))
              {


                *valuep = "";
              }
            else if (x_default)
              {
                svn_stringbuf_set(cfg->tmp_value, x_default);
                *valuep = cfg->tmp_value->data;
              }
            svn_pool_destroy(tmp_pool);
          }
    }
}
