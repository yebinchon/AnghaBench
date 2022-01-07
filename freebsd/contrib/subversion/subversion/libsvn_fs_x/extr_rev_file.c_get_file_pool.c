
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * pool; int owner; } ;
typedef TYPE_1__ svn_fs_x__revision_file_t ;
typedef int apr_pool_t ;


 int * svn_pool_create (int ) ;

__attribute__((used)) static apr_pool_t *
get_file_pool(svn_fs_x__revision_file_t *file)
{
  if (file->pool == ((void*)0))
    file->pool = svn_pool_create(file->owner);

  return file->pool;
}
