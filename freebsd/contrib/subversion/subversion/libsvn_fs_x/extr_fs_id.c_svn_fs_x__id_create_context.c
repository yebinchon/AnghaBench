
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * owner; TYPE_2__* fs; } ;
typedef TYPE_1__ svn_fs_x__id_context_t ;
struct TYPE_8__ {int * pool; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int apr_pool_t ;


 TYPE_1__* apr_pcalloc (int *,int) ;
 int apr_pool_cleanup_null ;
 int apr_pool_cleanup_register (int *,TYPE_1__*,int ,int ) ;
 int fs_cleanup ;
 int owner_cleanup ;

svn_fs_x__id_context_t *
svn_fs_x__id_create_context(svn_fs_t *fs,
                            apr_pool_t *result_pool)
{
  svn_fs_x__id_context_t *result = apr_pcalloc(result_pool, sizeof(*result));
  result->fs = fs;
  result->owner = result_pool;




  if (result_pool != fs->pool)
    {


      apr_pool_cleanup_register(result_pool,
                                result,
                                owner_cleanup,
                                apr_pool_cleanup_null);




      apr_pool_cleanup_register(fs->pool,
                                result,
                                fs_cleanup,
                                apr_pool_cleanup_null);
    }

  return result;
}
