
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lock_result_t {int err; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int * apr_hash_first (int *,int *) ;
 int * apr_hash_next (int *) ;
 struct lock_result_t* apr_hash_this_val (int *) ;
 int svn_error_clear (int ) ;

__attribute__((used)) static void
clear_lock_result_hash(apr_hash_t *results,
                       apr_pool_t *scratch_pool)
{
  apr_hash_index_t *hi;

  for (hi = apr_hash_first(scratch_pool, results); hi; hi = apr_hash_next(hi))
    {
      struct lock_result_t *result = apr_hash_this_val(hi);
      svn_error_clear(result->err);
    }
}
