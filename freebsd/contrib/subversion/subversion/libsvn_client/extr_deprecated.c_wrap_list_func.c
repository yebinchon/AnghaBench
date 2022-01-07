
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_client_list_func_t ;
typedef int svn_client_list_func2_t ;
struct list_func_wrapper_baton {int list_func1; void* list_func1_baton; } ;
typedef int apr_pool_t ;


 struct list_func_wrapper_baton* apr_palloc (int *,int) ;
 int list_func_wrapper ;

__attribute__((used)) static void
wrap_list_func(svn_client_list_func2_t *list_func2,
               void **list_func2_baton,
               svn_client_list_func_t list_func,
               void *baton,
               apr_pool_t *result_pool)
{
  struct list_func_wrapper_baton *lfwb = apr_palloc(result_pool,
                                                    sizeof(*lfwb));


  lfwb->list_func1_baton = baton;
  lfwb->list_func1 = list_func;

  *list_func2_baton = lfwb;
  *list_func2 = list_func_wrapper;
}
