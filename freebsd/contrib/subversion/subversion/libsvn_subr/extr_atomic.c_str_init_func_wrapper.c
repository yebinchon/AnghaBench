
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_boolean_t ;
struct TYPE_3__ {int * errstr; int baton; int * (* str_init_func ) (int ) ;} ;
typedef TYPE_1__ init_baton_t ;


 int * stub1 (int ) ;

__attribute__((used)) static svn_boolean_t str_init_func_wrapper(init_baton_t *init_baton)
{
  init_baton->errstr = init_baton->str_init_func(init_baton->baton);
  return (init_baton->errstr == ((void*)0));
}
