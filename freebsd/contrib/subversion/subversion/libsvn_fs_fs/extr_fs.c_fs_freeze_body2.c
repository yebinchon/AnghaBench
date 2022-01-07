
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
struct fs_freeze_baton_t {int fs; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int fs_freeze_body ;
 int svn_fs_fs__with_write_lock (int ,int ,void*,int *) ;

__attribute__((used)) static svn_error_t *
fs_freeze_body2(void *baton,
                apr_pool_t *pool)
{
  struct fs_freeze_baton_t *b = baton;
  SVN_ERR(svn_fs_fs__with_write_lock(b->fs, fs_freeze_body, baton, pool));

  return SVN_NO_ERROR;
}
