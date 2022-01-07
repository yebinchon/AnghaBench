
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int last_author; } ;
typedef TYPE_1__ svn_dirent_t ;
typedef int apr_pool_t ;


 TYPE_1__* apr_palloc (int *,int) ;
 int apr_pstrdup (int *,int ) ;

svn_dirent_t *
svn_dirent_dup(const svn_dirent_t *dirent,
               apr_pool_t *pool)
{
  svn_dirent_t *new_dirent = apr_palloc(pool, sizeof(*new_dirent));

  *new_dirent = *dirent;

  new_dirent->last_author = apr_pstrdup(pool, dirent->last_author);

  return new_dirent;
}
