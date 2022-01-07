
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int kind; void* copyfrom_rev; void* revision; } ;
typedef TYPE_1__ svn_client_commit_item3_t ;
typedef int apr_pool_t ;


 void* SVN_INVALID_REVNUM ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 int svn_node_unknown ;

svn_client_commit_item3_t *
svn_client_commit_item3_create(apr_pool_t *pool)
{
  svn_client_commit_item3_t *item = apr_pcalloc(pool, sizeof(*item));

  item->revision = SVN_INVALID_REVNUM;
  item->copyfrom_rev = SVN_INVALID_REVNUM;
  item->kind = svn_node_unknown;

  return item;
}
