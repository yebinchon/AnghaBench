
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_4__ {int revision; int bc_url; } ;
typedef TYPE_1__ baseline_info_t ;
typedef int apr_pool_t ;


 TYPE_1__* apr_palloc (int *,int) ;
 int apr_pstrdup (int *,char const*) ;

__attribute__((used)) static baseline_info_t *
baseline_info_make(const char *bc_url,
                   svn_revnum_t revision,
                   apr_pool_t *pool)
{
  baseline_info_t *result = apr_palloc(pool, sizeof(*result));

  result->bc_url = apr_pstrdup(pool, bc_url);
  result->revision = revision;

  return result;
}
