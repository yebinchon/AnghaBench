
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_client_blame_receiver_t ;
struct wrapped_receiver_baton_s {void* orig_baton; int orig_receiver; } ;
typedef int apr_pool_t ;
typedef int APR_EOL_STR ;


 struct wrapped_receiver_baton_s* apr_palloc (int *,int) ;
 int wrapped_receiver ;

__attribute__((used)) static void
wrap_pre_blame3_receiver(svn_client_blame_receiver_t *receiver,
                         void **receiver_baton,
                         apr_pool_t *pool)
{
  if (sizeof(APR_EOL_STR) == 3)
    {
      struct wrapped_receiver_baton_s *b = apr_palloc(pool,sizeof(*b));

      b->orig_receiver = *receiver;
      b->orig_baton = *receiver_baton;

      *receiver_baton = b;
      *receiver = wrapped_receiver;
    }
}
