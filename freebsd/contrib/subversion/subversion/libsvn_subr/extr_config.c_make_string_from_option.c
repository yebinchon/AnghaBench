
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * x_pool; int read_only; } ;
typedef TYPE_1__ svn_config_t ;
typedef int cfg_section_t ;
struct TYPE_7__ {scalar_t__ state; char* value; char* x_value; } ;
typedef TYPE_2__ cfg_option_t ;
typedef int apr_pool_t ;


 char* apr_pstrmemdup (int *,char*,int ) ;
 int assert (int) ;
 scalar_t__ expand_option_value (TYPE_1__*,int *,char*,char**,int *) ;
 scalar_t__ option_state_cyclic ;
 void* option_state_expanded ;
 scalar_t__ option_state_expanding ;
 scalar_t__ option_state_needs_expanding ;
 scalar_t__ strchr (char*,char) ;
 int strlen (char*) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

__attribute__((used)) static void
make_string_from_option(const char **valuep, svn_config_t *cfg,
                        cfg_section_t *section, cfg_option_t *opt,
                        apr_pool_t* x_pool)
{

  if ( opt->state == option_state_expanding
      || opt->state == option_state_cyclic)
    {



      *valuep = "";


      opt->state = option_state_cyclic;

      return;
    }
  else if (opt->state == option_state_needs_expanding)
    {



      if (opt->value && strchr(opt->value, '%'))
        {
          apr_pool_t *tmp_pool;



          assert(!cfg->read_only);

          tmp_pool = (x_pool ? x_pool : svn_pool_create(cfg->x_pool));



          opt->state = option_state_expanding;
          if (expand_option_value(cfg, section, opt->value, &opt->x_value,
                                  tmp_pool))
            opt->state = option_state_expanded;
          else
            opt->state = option_state_cyclic;


          if (x_pool != cfg->x_pool)
            {


              if (opt->x_value)
                opt->x_value = apr_pstrmemdup(cfg->x_pool, opt->x_value,
                                              strlen(opt->x_value));
              if (!x_pool)
                svn_pool_destroy(tmp_pool);
            }
        }
      else
        {
          opt->state = option_state_expanded;
        }
    }

  if (opt->x_value)
    *valuep = opt->x_value;
  else
    *valuep = opt->value;
}
