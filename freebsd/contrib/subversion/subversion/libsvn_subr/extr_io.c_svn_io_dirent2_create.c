
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int filesize; } ;
typedef TYPE_1__ svn_io_dirent2_t ;
typedef int apr_pool_t ;


 int SVN_INVALID_FILESIZE ;
 TYPE_1__* apr_pcalloc (int *,int) ;

svn_io_dirent2_t *
svn_io_dirent2_create(apr_pool_t *result_pool)
{
  svn_io_dirent2_t *dirent = apr_pcalloc(result_pool, sizeof(*dirent));



  dirent->filesize = SVN_INVALID_FILESIZE;


  return dirent;
}
