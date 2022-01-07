
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int state; int * attrs; struct TYPE_4__* prev; int * state_pool; } ;
typedef TYPE_1__ svn_ra_serf__xml_estate_t ;
typedef int apr_ssize_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int * apr_hash_first (int *,int *) ;
 int * apr_hash_make (int *) ;
 int * apr_hash_next (int *) ;
 int apr_hash_set (int *,void const*,int ,void*) ;
 int apr_hash_this (int *,void const**,int *,void**) ;
 int ensure_pool (TYPE_1__*) ;

apr_hash_t *
svn_ra_serf__xml_gather_since(svn_ra_serf__xml_estate_t *xes,
                              int stop_state)
{
  apr_hash_t *data;
  apr_pool_t *pool;

  ensure_pool(xes);
  pool = xes->state_pool;

  data = apr_hash_make(pool);

  for (; xes != ((void*)0); xes = xes->prev)
    {
      if (xes->attrs != ((void*)0))
        {
          apr_hash_index_t *hi;

          for (hi = apr_hash_first(pool, xes->attrs); hi;
               hi = apr_hash_next(hi))
            {
              const void *key;
              apr_ssize_t klen;
              void *val;


              apr_hash_this(hi, &key, &klen, &val);
              apr_hash_set(data, key, klen, val);
            }
        }

      if (xes->state == stop_state)
        break;
    }

  return data;
}
