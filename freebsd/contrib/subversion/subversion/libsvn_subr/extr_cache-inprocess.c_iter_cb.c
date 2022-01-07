
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
struct cache_iter_baton {int user_baton; int * (* user_cb ) (int ,void const*,int ,int ,int *) ;} ;
struct cache_entry {int value; } ;
typedef int apr_ssize_t ;
typedef int apr_pool_t ;


 int * stub1 (int ,void const*,int ,int ,int *) ;

__attribute__((used)) static svn_error_t *
iter_cb(void *baton,
        const void *key,
        apr_ssize_t klen,
        void *val,
        apr_pool_t *pool)
{
  struct cache_iter_baton *b = baton;
  struct cache_entry *entry = val;
  return (b->user_cb)(b->user_baton, key, klen, entry->value, pool);
}
