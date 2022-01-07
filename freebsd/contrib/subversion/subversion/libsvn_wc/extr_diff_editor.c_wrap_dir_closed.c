
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int callback_baton; TYPE_1__* callbacks; } ;
typedef TYPE_2__ wc_diff_wrap_baton_t ;
typedef int svn_error_t ;
struct TYPE_7__ {TYPE_2__* baton; } ;
typedef TYPE_3__ svn_diff_tree_processor_t ;
typedef int svn_diff_source_t ;
typedef int apr_pool_t ;
struct TYPE_5__ {int (* dir_closed ) (int *,int *,int *,char const*,int ,int ,int *) ;} ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int stub1 (int *,int *,int *,char const*,int ,int ,int *) ;

__attribute__((used)) static svn_error_t *
wrap_dir_closed(const char *relpath,
                const svn_diff_source_t *left_source,
                const svn_diff_source_t *right_source,
                void *dir_baton,
                const svn_diff_tree_processor_t *processor,
                apr_pool_t *scratch_pool)
{
  wc_diff_wrap_baton_t *wb = processor->baton;



  SVN_ERR(wb->callbacks->dir_closed(((void*)0), ((void*)0), ((void*)0),
                                    relpath,
                                    FALSE ,
                                    wb->callback_baton,
                                    scratch_pool));

return SVN_NO_ERROR;
}
