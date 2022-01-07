
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_file_rev_handler_t ;
typedef int svn_file_rev_handler_old_t ;
struct file_rev_handler_wrapper_baton {int handler; void* baton; } ;
typedef int apr_pool_t ;


 struct file_rev_handler_wrapper_baton* apr_pcalloc (int *,int) ;
 int file_rev_handler_wrapper ;

void
svn_compat_wrap_file_rev_handler(svn_file_rev_handler_t *handler2,
                                 void **handler2_baton,
                                 svn_file_rev_handler_old_t handler,
                                 void *handler_baton,
                                 apr_pool_t *pool)
{
  struct file_rev_handler_wrapper_baton *fwb = apr_pcalloc(pool, sizeof(*fwb));


  fwb->baton = handler_baton;
  fwb->handler = handler;

  *handler2_baton = fwb;
  *handler2 = file_rev_handler_wrapper;
}
