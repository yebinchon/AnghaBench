
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int apr_err; } ;
typedef TYPE_1__ svn_error_t ;
struct cleanup_fs_access_baton {int fs; } ;
typedef int apr_status_t ;


 int APR_SUCCESS ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_fs_set_access (int ,int *) ;

__attribute__((used)) static apr_status_t cleanup_fs_access(void *data)
{
  svn_error_t *serr;
  struct cleanup_fs_access_baton *baton = data;

  serr = svn_fs_set_access(baton->fs, ((void*)0));
  if (serr)
    {
      apr_status_t apr_err = serr->apr_err;
      svn_error_clear(serr);
      return apr_err;
    }

  return APR_SUCCESS;
}
