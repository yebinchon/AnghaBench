
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_proplist_receiver_t ;
typedef int svn_proplist_receiver2_t ;
struct proplist_receiver_wrapper_baton {int receiver; void* baton; } ;
typedef int apr_pool_t ;


 struct proplist_receiver_wrapper_baton* apr_palloc (int *,int) ;
 int proplist_wrapper_receiver ;

__attribute__((used)) static void
wrap_proplist_receiver(svn_proplist_receiver2_t *receiver2,
                       void **receiver2_baton,
                       svn_proplist_receiver_t receiver,
                       void *receiver_baton,
                       apr_pool_t *pool)
{
  struct proplist_receiver_wrapper_baton *plrwb = apr_palloc(pool,
                                                             sizeof(*plrwb));


  plrwb->baton = receiver_baton;
  plrwb->receiver = receiver;

  *receiver2_baton = plrwb;
  *receiver2 = proplist_wrapper_receiver;
}
