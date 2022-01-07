
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_4__ {int post_commit_err; int author; int date; int revision; } ;
typedef TYPE_1__ svn_commit_info_t ;
struct TYPE_5__ {int pool; int ** post_commit_err; int ** author; int ** date; int * new_rev; } ;
typedef TYPE_2__ commit_callback_baton_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int * apr_pstrdup (int ,int ) ;

__attribute__((used)) static svn_error_t *commit_done(const svn_commit_info_t *commit_info,
                                void *baton, apr_pool_t *pool)
{
  commit_callback_baton_t *ccb = baton;

  *ccb->new_rev = commit_info->revision;
  *ccb->date = commit_info->date
    ? apr_pstrdup(ccb->pool, commit_info->date): ((void*)0);
  *ccb->author = commit_info->author
    ? apr_pstrdup(ccb->pool, commit_info->author) : ((void*)0);
  *ccb->post_commit_err = commit_info->post_commit_err
    ? apr_pstrdup(ccb->pool, commit_info->post_commit_err) : ((void*)0);
  return SVN_NO_ERROR;
}
