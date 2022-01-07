
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int len; struct TYPE_5__* next; struct TYPE_5__* children; struct TYPE_5__ const* data; scalar_t__ is_atom; } ;
typedef TYPE_1__ svn_skel_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 void* apr_pmemdup (int *,TYPE_1__ const*,int) ;

svn_skel_t *svn_skel__dup(const svn_skel_t *src_skel, svn_boolean_t dup_data,
                          apr_pool_t *result_pool)
{
  svn_skel_t *skel = apr_pmemdup(result_pool, src_skel, sizeof(svn_skel_t));

  if (dup_data && skel->data)
    {
      if (skel->is_atom)
        skel->data = apr_pmemdup(result_pool, skel->data, skel->len);
      else
        {



          skel->data = ((void*)0);
          skel->len = 0;
        }
    }

  if (skel->children)
    skel->children = svn_skel__dup(skel->children, dup_data, result_pool);

  if (skel->next)
    skel->next = svn_skel__dup(skel->next, dup_data, result_pool);

  return skel;
}
