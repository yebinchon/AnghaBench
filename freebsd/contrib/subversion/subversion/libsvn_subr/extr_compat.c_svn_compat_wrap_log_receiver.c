
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_log_message_receiver_t ;
typedef int svn_log_entry_receiver_t ;
struct log_wrapper_baton {int receiver; void* baton; } ;
typedef int apr_pool_t ;


 struct log_wrapper_baton* apr_palloc (int *,int) ;
 int log_wrapper_callback ;

void
svn_compat_wrap_log_receiver(svn_log_entry_receiver_t *receiver2,
                             void **receiver2_baton,
                             svn_log_message_receiver_t receiver,
                             void *receiver_baton,
                             apr_pool_t *pool)
{
  struct log_wrapper_baton *lwb = apr_palloc(pool, sizeof(*lwb));


  lwb->baton = receiver_baton;
  lwb->receiver = receiver;

  *receiver2_baton = lwb;
  *receiver2 = log_wrapper_callback;
}
