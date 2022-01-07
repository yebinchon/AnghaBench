
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int callback_baton; TYPE_1__* callbacks; } ;
typedef TYPE_2__ wc_diff_wrap_baton_t ;
typedef int svn_error_t ;
struct TYPE_11__ {TYPE_2__* baton; } ;
typedef TYPE_3__ svn_diff_tree_processor_t ;
struct TYPE_12__ {int revision; } ;
typedef TYPE_4__ svn_diff_source_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
struct TYPE_9__ {int (* file_opened ) (int *,int *,char const*,int ,int ,int *) ;} ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int stub1 (int *,int *,char const*,int ,int ,int *) ;

__attribute__((used)) static svn_error_t *
wrap_file_opened(void **new_file_baton,
                 svn_boolean_t *skip,
                 const char *relpath,
                 const svn_diff_source_t *left_source,
                 const svn_diff_source_t *right_source,
                 const svn_diff_source_t *copyfrom_source,
                 void *dir_baton,
                 const svn_diff_tree_processor_t *processor,
                 apr_pool_t *result_pool,
                 apr_pool_t *scratch_pool)
{
  wc_diff_wrap_baton_t *wb = processor->baton;
  svn_boolean_t tree_conflicted = FALSE;

  if (left_source)
    SVN_ERR(wb->callbacks->file_opened(&tree_conflicted, skip, relpath,
                                       right_source
                                            ? right_source->revision
                                            : (left_source
                                                    ? left_source->revision
                                                    : SVN_INVALID_REVNUM),
                                       wb->callback_baton, scratch_pool));



  *new_file_baton = ((void*)0);
  return SVN_NO_ERROR;
}
