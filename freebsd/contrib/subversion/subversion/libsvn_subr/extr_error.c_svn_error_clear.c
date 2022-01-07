
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pool; struct TYPE_4__* child; } ;
typedef TYPE_1__ svn_error_t ;


 int apr_pool_cleanup_kill (int ,TYPE_1__*,int ) ;
 int err_abort ;
 int svn_pool_destroy (int ) ;

void
svn_error_clear(svn_error_t *err)
{
  if (err)
    {





      svn_pool_destroy(err->pool);
    }
}
