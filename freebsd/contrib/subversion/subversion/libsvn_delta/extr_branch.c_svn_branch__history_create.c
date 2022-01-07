
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_branch__rev_bid_t ;
struct TYPE_4__ {int parents; } ;
typedef TYPE_1__ svn_branch__history_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int * apr_hash_first (int *,int *) ;
 int apr_hash_make (int *) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 int * apr_hash_this_val (int *) ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 int apr_pstrdup (int *,char const*) ;
 int svn_branch__rev_bid_dup (int *,int *) ;
 int svn_hash_sets (int ,int ,int ) ;

svn_branch__history_t *
svn_branch__history_create(apr_hash_t *parents,
                           apr_pool_t *result_pool)
{
  svn_branch__history_t *history
    = apr_pcalloc(result_pool, sizeof(*history));

  history->parents = apr_hash_make(result_pool);
  if (parents)
    {
      apr_hash_index_t *hi;

      for (hi = apr_hash_first(result_pool, parents);
           hi; hi = apr_hash_next(hi))
        {
          const char *bid = apr_hash_this_key(hi);
          svn_branch__rev_bid_t *val = apr_hash_this_val(hi);

          svn_hash_sets(history->parents,
                        apr_pstrdup(result_pool, bid),
                        svn_branch__rev_bid_dup(val, result_pool));
        }
    }
  return history;
}
