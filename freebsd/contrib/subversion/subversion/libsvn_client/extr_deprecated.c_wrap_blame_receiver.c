
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_client_blame_receiver_t ;
typedef int svn_client_blame_receiver2_t ;
struct blame_receiver_wrapper_baton {int receiver; void* baton; } ;
typedef int apr_pool_t ;


 struct blame_receiver_wrapper_baton* apr_palloc (int *,int) ;
 int blame_wrapper_receiver ;

__attribute__((used)) static void
wrap_blame_receiver(svn_client_blame_receiver2_t *receiver2,
                    void **receiver2_baton,
                    svn_client_blame_receiver_t receiver,
                    void *receiver_baton,
                    apr_pool_t *pool)
{
  struct blame_receiver_wrapper_baton *brwb = apr_palloc(pool, sizeof(*brwb));


  brwb->baton = receiver_baton;
  brwb->receiver = receiver;

  *receiver2_baton = brwb;
  *receiver2 = blame_wrapper_receiver;
}
