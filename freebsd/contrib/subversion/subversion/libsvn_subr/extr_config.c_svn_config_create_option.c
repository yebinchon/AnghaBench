
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ svn_boolean_t ;
struct TYPE_4__ {int state; int * x_value; void* value; void* hash_key; void* name; } ;
typedef TYPE_1__ cfg_option_t ;
typedef int apr_pool_t ;


 TYPE_1__* apr_palloc (int *,int) ;
 void* apr_pstrdup (int *,char const*) ;
 void* make_hash_key (void*) ;
 int option_state_needs_expanding ;

__attribute__((used)) static void
svn_config_create_option(cfg_option_t **opt,
                         const char *option,
                         const char *value,
                         svn_boolean_t option_names_case_sensitive,
                         apr_pool_t *pool)
{
  cfg_option_t *o;

  o = apr_palloc(pool, sizeof(cfg_option_t));
  o->name = apr_pstrdup(pool, option);
  if(option_names_case_sensitive)
    o->hash_key = o->name;
  else
    o->hash_key = make_hash_key(apr_pstrdup(pool, option));

  o->value = apr_pstrdup(pool, value);
  o->x_value = ((void*)0);
  o->state = option_state_needs_expanding;

  *opt = o;
}
