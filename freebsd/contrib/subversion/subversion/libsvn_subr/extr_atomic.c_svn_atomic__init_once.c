
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int svn_atomic_t ;
typedef int svn_atomic__err_init_func_t ;
struct TYPE_3__ {int * err; void* baton; int * pool; int err_init_func; } ;
typedef TYPE_1__ init_baton_t ;
typedef int apr_pool_t ;


 int SVN_ERR_ATOMIC_INIT_FAILURE ;
 int * SVN_NO_ERROR ;
 int err_init_func_wrapper ;
 scalar_t__ init_once (int volatile*,int ,TYPE_1__*) ;
 int * svn_error_create (int ,int *,char*) ;

svn_error_t *
svn_atomic__init_once(volatile svn_atomic_t *global_status,
                      svn_atomic__err_init_func_t err_init_func,
                      void *baton,
                      apr_pool_t* pool)
{
  init_baton_t init_baton;
  init_baton.err_init_func = err_init_func;
  init_baton.err = ((void*)0);
  init_baton.pool = pool;
  init_baton.baton = baton;

  if (init_once(global_status, err_init_func_wrapper, &init_baton))
    return SVN_NO_ERROR;

  return svn_error_create(SVN_ERR_ATOMIC_INIT_FAILURE, init_baton.err,
                          "Couldn't perform atomic initialization");
}
