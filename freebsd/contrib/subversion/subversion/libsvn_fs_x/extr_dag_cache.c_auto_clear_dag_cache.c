
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ insertions; int buckets; int pool; } ;
typedef TYPE_1__ svn_fs_x__dag_cache_t ;
typedef int svn_boolean_t ;


 scalar_t__ BUCKET_COUNT ;
 int FALSE ;
 int TRUE ;
 int memset (int ,int ,int) ;
 int svn_pool_clear (int ) ;

__attribute__((used)) static svn_boolean_t
auto_clear_dag_cache(svn_fs_x__dag_cache_t* cache)
{
  if (cache->insertions <= BUCKET_COUNT)
    return FALSE;

  svn_pool_clear(cache->pool);

  memset(cache->buckets, 0, sizeof(cache->buckets));
  cache->insertions = 0;

  return TRUE;
}
