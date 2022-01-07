
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct dir_baton {int pool; int deleted_entries; int eb; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int apr_pstrdup (int ,char const*) ;
 int dump_pending_dir (int ,int *) ;
 int svn_hash_sets (int ,int ,struct dir_baton*) ;

__attribute__((used)) static svn_error_t *
delete_entry(const char *path,
             svn_revnum_t revision,
             void *parent_baton,
             apr_pool_t *pool)
{
  struct dir_baton *pb = parent_baton;

  SVN_ERR(dump_pending_dir(pb->eb, pool));





  svn_hash_sets(pb->deleted_entries, apr_pstrdup(pb->pool, path), pb);

  return SVN_NO_ERROR;
}
