
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_log_entry_t ;
typedef int apr_pool_t ;


 int * apr_pcalloc (int *,int) ;

svn_log_entry_t *
svn_log_entry_create(apr_pool_t *pool)
{
  svn_log_entry_t *log_entry = apr_pcalloc(pool, sizeof(*log_entry));

  return log_entry;
}
