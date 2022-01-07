
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * last_author; scalar_t__ time; int created_rev; int size; int kind; } ;
typedef TYPE_1__ svn_dirent_t ;
typedef int apr_pool_t ;


 int SVN_INVALID_FILESIZE ;
 int SVN_INVALID_REVNUM ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 int svn_node_unknown ;

svn_dirent_t *
svn_dirent_create(apr_pool_t *result_pool)
{
  svn_dirent_t *new_dirent = apr_pcalloc(result_pool, sizeof(*new_dirent));

  new_dirent->kind = svn_node_unknown;
  new_dirent->size = SVN_INVALID_FILESIZE;
  new_dirent->created_rev = SVN_INVALID_REVNUM;
  new_dirent->time = 0;
  new_dirent->last_author = ((void*)0);

  return new_dirent;
}
