
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pool; } ;
typedef TYPE_1__ config_access_t ;


 int svn_pool_destroy (int ) ;

void
svn_repos__destroy_config_access(config_access_t *access)
{
  svn_pool_destroy(access->pool);
}
