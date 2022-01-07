
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ offset; } ;
typedef TYPE_1__ svn_fs_fs__p2l_entry_t ;
typedef int svn_error_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
typedef scalar_t__ apr_off_t ;


 int * SVN_NO_ERROR ;
 int * apr_pmemdup (int *,TYPE_1__*,int) ;
 TYPE_1__* get_p2l_entry_from_cached_page (void const*,scalar_t__,int *,int *) ;

__attribute__((used)) static svn_error_t *
p2l_entry_lookup_func(void **out,
                      const void *data,
                      apr_size_t data_len,
                      void *baton,
                      apr_pool_t *result_pool)
{
  svn_fs_fs__p2l_entry_t *entry
    = get_p2l_entry_from_cached_page(data, *(apr_off_t *)baton, result_pool,
                                     result_pool);

  *out = entry && entry->offset == *(apr_off_t *)baton
       ? apr_pmemdup(result_pool, entry, sizeof(*entry))
       : ((void*)0);

  return SVN_NO_ERROR;
}
