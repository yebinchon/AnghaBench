
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock_tokens; int username; } ;
typedef TYPE_1__ svn_fs_access_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR_ASSERT (int ) ;
 int * SVN_NO_ERROR ;
 int apr_hash_make (int *) ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 int apr_pstrdup (int *,char const*) ;

svn_error_t *
svn_fs_create_access(svn_fs_access_t **access_ctx,
                     const char *username,
                     apr_pool_t *pool)
{
  svn_fs_access_t *ac;

  SVN_ERR_ASSERT(username != ((void*)0));

  ac = apr_pcalloc(pool, sizeof(*ac));
  ac->username = apr_pstrdup(pool, username);
  ac->lock_tokens = apr_hash_make(pool);
  *access_ctx = ac;

  return SVN_NO_ERROR;
}
