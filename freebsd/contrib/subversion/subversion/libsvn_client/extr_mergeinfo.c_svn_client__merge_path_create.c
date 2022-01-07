
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int abspath; } ;
typedef TYPE_1__ svn_client__merge_path_t ;
typedef int apr_pool_t ;


 TYPE_1__* apr_pcalloc (int *,int) ;
 int apr_pstrdup (int *,char const*) ;

svn_client__merge_path_t *
svn_client__merge_path_create(const char *abspath,
                              apr_pool_t *pool)
{
  svn_client__merge_path_t *result = apr_pcalloc(pool, sizeof(*result));

  result->abspath = apr_pstrdup(pool, abspath);
  return result;
}
