
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * repos_root; int * post_commit_err; int revision; int * author; int * date; } ;
typedef TYPE_1__ svn_commit_info_t ;
typedef int apr_pool_t ;


 TYPE_1__* apr_palloc (int *,int) ;
 int * apr_pstrdup (int *,int *) ;

svn_commit_info_t *
svn_commit_info_dup(const svn_commit_info_t *src_commit_info,
                    apr_pool_t *pool)
{
  svn_commit_info_t *dst_commit_info
    = apr_palloc(pool, sizeof(*dst_commit_info));

  dst_commit_info->date = src_commit_info->date
    ? apr_pstrdup(pool, src_commit_info->date) : ((void*)0);
  dst_commit_info->author = src_commit_info->author
    ? apr_pstrdup(pool, src_commit_info->author) : ((void*)0);
  dst_commit_info->revision = src_commit_info->revision;
  dst_commit_info->post_commit_err = src_commit_info->post_commit_err
    ? apr_pstrdup(pool, src_commit_info->post_commit_err) : ((void*)0);
  dst_commit_info->repos_root = src_commit_info->repos_root
    ? apr_pstrdup(pool, src_commit_info->repos_root) : ((void*)0);

  return dst_commit_info;
}
