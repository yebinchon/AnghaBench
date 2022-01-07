
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_fs_t ;
struct TYPE_4__ {int * vtable; int * pool; int * fs; } ;
typedef TYPE_1__ svn_fs_root_t ;
typedef int apr_pool_t ;


 TYPE_1__* apr_pcalloc (int *,int) ;
 int root_vtable ;

__attribute__((used)) static svn_fs_root_t *
make_root(svn_fs_t *fs,
          apr_pool_t *pool)
{
  svn_fs_root_t *root = apr_pcalloc(pool, sizeof(*root));

  root->fs = fs;
  root->pool = pool;
  root->vtable = &root_vtable;

  return root;
}
