
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_3__ {int author; int date; int revision; } ;
typedef TYPE_1__ svn_commit_info_t ;
struct commit_wrapper_baton {int baton; int * (* callback ) (int ,int ,int ,int ) ;} ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int * stub1 (int ,int ,int ,int ) ;

__attribute__((used)) static svn_error_t *
commit_wrapper_callback(const svn_commit_info_t *commit_info,
                        void *baton, apr_pool_t *pool)
{
  struct commit_wrapper_baton *cwb = baton;

  if (cwb->callback)
    return cwb->callback(commit_info->revision,
                         commit_info->date,
                         commit_info->author,
                         cwb->baton);

  return SVN_NO_ERROR;
}
