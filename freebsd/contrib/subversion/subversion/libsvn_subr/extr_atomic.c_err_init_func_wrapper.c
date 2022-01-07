
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_boolean_t ;
struct TYPE_3__ {scalar_t__ err; scalar_t__ (* err_init_func ) (int ,int ) ;int pool; int baton; } ;
typedef TYPE_1__ init_baton_t ;


 scalar_t__ SVN_NO_ERROR ;
 scalar_t__ stub1 (int ,int ) ;

__attribute__((used)) static svn_boolean_t err_init_func_wrapper(init_baton_t *init_baton)
{
  init_baton->err = init_baton->err_init_func(init_baton->baton,
                                              init_baton->pool);
  return (init_baton->err == SVN_NO_ERROR);
}
