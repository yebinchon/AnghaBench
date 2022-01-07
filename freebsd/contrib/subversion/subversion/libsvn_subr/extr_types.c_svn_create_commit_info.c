
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int revision; } ;
typedef TYPE_1__ svn_commit_info_t ;
typedef int apr_pool_t ;


 int SVN_INVALID_REVNUM ;
 TYPE_1__* apr_pcalloc (int *,int) ;

svn_commit_info_t *
svn_create_commit_info(apr_pool_t *pool)
{
  svn_commit_info_t *commit_info
    = apr_pcalloc(pool, sizeof(*commit_info));

  commit_info->revision = SVN_INVALID_REVNUM;


  return commit_info;
}
