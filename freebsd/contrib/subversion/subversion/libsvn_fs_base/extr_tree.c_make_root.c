
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_fs_t ;
struct TYPE_6__ {TYPE_2__* fsap_data; int * vtable; int * pool; int * fs; } ;
typedef TYPE_1__ svn_fs_root_t ;
struct TYPE_7__ {scalar_t__ node_cache_idx; int node_cache; } ;
typedef TYPE_2__ base_root_data_t ;
typedef int apr_pool_t ;


 int apr_hash_make (int *) ;
 TYPE_2__* apr_palloc (int *,int) ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 int root_vtable ;

__attribute__((used)) static svn_fs_root_t *
make_root(svn_fs_t *fs,
          apr_pool_t *pool)
{
  svn_fs_root_t *root = apr_pcalloc(pool, sizeof(*root));
  base_root_data_t *brd = apr_palloc(pool, sizeof(*brd));

  root->fs = fs;
  root->pool = pool;


  brd->node_cache = apr_hash_make(pool);
  brd->node_cache_idx = 0;
  root->vtable = &root_vtable;
  root->fsap_data = brd;

  return root;
}
