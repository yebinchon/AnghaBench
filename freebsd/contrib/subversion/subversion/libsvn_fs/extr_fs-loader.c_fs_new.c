
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * uuid; int * fsap_data; int * vtable; int * access_ctx; int * config; int * warning_baton; int warning; int * path; int * pool; } ;
typedef TYPE_1__ svn_fs_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 TYPE_1__* apr_palloc (int *,int) ;
 int default_warning_func ;

__attribute__((used)) static svn_fs_t *
fs_new(apr_hash_t *fs_config, apr_pool_t *pool)
{
  svn_fs_t *fs = apr_palloc(pool, sizeof(*fs));
  fs->pool = pool;
  fs->path = ((void*)0);
  fs->warning = default_warning_func;
  fs->warning_baton = ((void*)0);
  fs->config = fs_config;
  fs->access_ctx = ((void*)0);
  fs->vtable = ((void*)0);
  fs->fsap_data = ((void*)0);
  fs->uuid = ((void*)0);
  return fs;
}
