
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int refcount; int error_info; int * dbconfig_file; int * pool; } ;
typedef TYPE_1__ bdb_env_t ;
typedef int apr_status_t ;


 int APR_SUCCESS ;
 int apr_threadkey_private_delete (int ) ;
 int free (void*) ;

__attribute__((used)) static apr_status_t
cleanup_env(void *data)
{
  bdb_env_t *bdb = data;
  bdb->pool = ((void*)0);
  bdb->dbconfig_file = ((void*)0);
  if (!bdb->refcount)
    free(data);

  return APR_SUCCESS;
}
