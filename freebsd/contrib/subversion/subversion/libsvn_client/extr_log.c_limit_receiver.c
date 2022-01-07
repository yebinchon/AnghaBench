
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_log_entry_t ;
typedef int svn_error_t ;
struct TYPE_2__ {int baton; int * (* receiver ) (int ,int *,int *) ;int limit; } ;
typedef TYPE_1__ limit_receiver_baton_t ;
typedef int apr_pool_t ;


 int * stub1 (int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
limit_receiver(void *baton, svn_log_entry_t *log_entry, apr_pool_t *pool)
{
  limit_receiver_baton_t *rb = baton;

  rb->limit--;

  return rb->receiver(rb->baton, log_entry, pool);
}
