
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
struct edit_baton {int path; } ;
struct dir_baton {char const* path; char const* cmp_path; int * pool; void* check_name_collision; int deleted_entries; void* written_out; int cmp_rev; struct edit_baton* edit_baton; } ;
typedef int apr_pool_t ;


 void* FALSE ;
 int SVN_ERR_ASSERT_NO_RETURN (int ) ;
 int apr_hash_make (int *) ;
 struct dir_baton* apr_pcalloc (int *,int) ;
 char* apr_pstrdup (int *,int ) ;
 char* svn_relpath_canonicalize (char const*,int *) ;
 char* svn_relpath_join (int ,char const*,int *) ;

__attribute__((used)) static struct dir_baton *
make_dir_baton(const char *path,
               const char *cmp_path,
               svn_revnum_t cmp_rev,
               void *edit_baton,
               struct dir_baton *pb,
               apr_pool_t *pool)
{
  struct edit_baton *eb = edit_baton;
  struct dir_baton *new_db = apr_pcalloc(pool, sizeof(*new_db));
  const char *full_path;


  SVN_ERR_ASSERT_NO_RETURN(!path || pb);


  if (pb)
    full_path = svn_relpath_join(eb->path, path, pool);
  else
    full_path = apr_pstrdup(pool, eb->path);


  if (cmp_path)
    cmp_path = svn_relpath_canonicalize(cmp_path, pool);

  new_db->edit_baton = eb;
  new_db->path = full_path;
  new_db->cmp_path = cmp_path;
  new_db->cmp_rev = cmp_rev;
  new_db->written_out = FALSE;
  new_db->deleted_entries = apr_hash_make(pool);
  new_db->check_name_collision = FALSE;
  new_db->pool = pool;

  return new_db;
}
