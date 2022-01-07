
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* child; } ;
typedef TYPE_1__ svn_error_t ;



svn_error_t *
svn_error_root_cause(svn_error_t *err)
{
  while (err)
    {



      if (err->child )
        err = err->child;
      else
        break;
    }

  return err;
}
