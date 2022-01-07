
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ entry; } ;
typedef TYPE_1__ svn_wc_status_t ;
typedef int apr_pool_t ;


 TYPE_1__* apr_palloc (int *,int) ;
 scalar_t__ svn_wc_entry_dup (scalar_t__,int *) ;

svn_wc_status_t *
svn_wc_dup_status(const svn_wc_status_t *orig_stat,
                  apr_pool_t *pool)
{
  svn_wc_status_t *new_stat = apr_palloc(pool, sizeof(*new_stat));


  *new_stat = *orig_stat;


  if (orig_stat->entry)
    new_stat->entry = svn_wc_entry_dup(orig_stat->entry, pool);


  return new_stat;
}
