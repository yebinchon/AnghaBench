
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int wc_queues; int * pool; } ;
typedef TYPE_1__ svn_wc_committed_queue_t ;
typedef int apr_pool_t ;


 int apr_hash_make (int *) ;
 TYPE_1__* apr_palloc (int *,int) ;

svn_wc_committed_queue_t *
svn_wc_committed_queue_create(apr_pool_t *pool)
{
  svn_wc_committed_queue_t *q;

  q = apr_palloc(pool, sizeof(*q));
  q->pool = pool;
  q->wc_queues = apr_hash_make(pool);

  return q;
}
