
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;


 int bdb_cache_state ;
 int bdb_init_cb ;
 int * svn_atomic__init_once (int *,int ,int *,int *) ;

svn_error_t *
svn_fs_bdb__init(apr_pool_t* pool)
{
  return svn_atomic__init_once(&bdb_cache_state, bdb_init_cb, ((void*)0), pool);
}
