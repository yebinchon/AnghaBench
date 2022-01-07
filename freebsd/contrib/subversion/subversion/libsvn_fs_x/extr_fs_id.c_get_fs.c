
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * fs; int owner; int fs_path; int * (* svn_fs_open_ ) (int **,int ,int *,int ,int ) ;} ;
typedef TYPE_1__ svn_fs_x__id_context_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;


 int SVN_ERR_ASSERT_NO_RETURN (int * (*) (int **,int ,int *,int ,int )) ;
 int * stub1 (int **,int ,int *,int ,int ) ;
 int svn_error_clear (int *) ;

__attribute__((used)) static svn_fs_t *
get_fs(svn_fs_x__id_context_t *context)
{
  if (!context->fs)
    {
      svn_error_t *err;

      SVN_ERR_ASSERT_NO_RETURN(context->svn_fs_open_);

      err = context->svn_fs_open_(&context->fs, context->fs_path, ((void*)0),
                                  context->owner, context->owner);
      if (err)
        {
          svn_error_clear(err);
          context->fs = ((void*)0);
        }
    }

  return context->fs;
}
