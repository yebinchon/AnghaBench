
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_3__ {scalar_t__ total_size; scalar_t__ data_size; scalar_t__ used_size; scalar_t__ total_entries; scalar_t__ used_entries; int id; } ;
typedef TYPE_1__ svn_cache__info_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int apr_pstrdup (int *,char const*) ;

__attribute__((used)) static svn_error_t *
null_cache_get_info(void *cache_void,
                    svn_cache__info_t *info,
                    svn_boolean_t reset,
                    apr_pool_t *result_pool)
{
  const char *id = cache_void;

  info->id = apr_pstrdup(result_pool, id);

  info->used_entries = 0;
  info->total_entries = 0;

  info->used_size = 0;
  info->data_size = 0;
  info->total_size = 0;

  return SVN_NO_ERROR;
}
