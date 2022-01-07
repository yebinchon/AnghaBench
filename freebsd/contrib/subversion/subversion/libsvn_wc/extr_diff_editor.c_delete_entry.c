
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct dir_baton_t {scalar_t__ deletes; int pool; } ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 scalar_t__ apr_hash_make (int ) ;
 char* svn_dirent_basename (char const*,int ) ;
 int svn_hash_sets (scalar_t__,char const*,char*) ;

__attribute__((used)) static svn_error_t *
delete_entry(const char *path,
             svn_revnum_t base_revision,
             void *parent_baton,
             apr_pool_t *pool)
{
  struct dir_baton_t *pb = parent_baton;
  const char *name = svn_dirent_basename(path, pb->pool);

  if (!pb->deletes)
    pb->deletes = apr_hash_make(pb->pool);

  svn_hash_sets(pb->deletes, name, "");
  return SVN_NO_ERROR;
}
