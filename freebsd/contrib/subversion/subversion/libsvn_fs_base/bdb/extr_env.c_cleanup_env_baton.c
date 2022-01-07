
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ bdb; } ;
typedef TYPE_1__ bdb_env_baton_t ;
typedef int apr_status_t ;


 int APR_SUCCESS ;
 int svn_error_clear (int ) ;
 int svn_fs_bdb__close (TYPE_1__*) ;

__attribute__((used)) static apr_status_t
cleanup_env_baton(void *data)
{
  bdb_env_baton_t *bdb_baton = data;

  if (bdb_baton->bdb)
    svn_error_clear(svn_fs_bdb__close(bdb_baton));

  return APR_SUCCESS;
}
