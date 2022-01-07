
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ x_values; int x_pool; } ;
typedef TYPE_1__ svn_config_t ;


 scalar_t__ FALSE ;
 int for_each_option (TYPE_1__*,int *,int ,int ) ;
 int rmex_callback ;
 int svn_pool_clear (int ) ;

__attribute__((used)) static void
remove_expansions(svn_config_t *cfg)
{
  if (!cfg->x_values)
    return;

  for_each_option(cfg, ((void*)0), cfg->x_pool, rmex_callback);
  svn_pool_clear(cfg->x_pool);
  cfg->x_values = FALSE;
}
