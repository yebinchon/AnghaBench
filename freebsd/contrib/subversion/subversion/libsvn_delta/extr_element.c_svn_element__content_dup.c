
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int payload; int name; } ;
typedef TYPE_1__ svn_element__content_t ;
typedef int apr_pool_t ;


 TYPE_1__* apr_pmemdup (int *,TYPE_1__ const*,int) ;
 int apr_pstrdup (int *,int ) ;
 int svn_element__payload_dup (int ,int *) ;

svn_element__content_t *
svn_element__content_dup(const svn_element__content_t *old,
                         apr_pool_t *result_pool)
{
  svn_element__content_t *content
     = apr_pmemdup(result_pool, old, sizeof(*content));

  content->name = apr_pstrdup(result_pool, old->name);
  content->payload = svn_element__payload_dup(old->payload, result_pool);
  return content;
}
