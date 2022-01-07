
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
struct dump_edit_baton {int dummy; } ;
struct dir_baton {char const* repos_relpath; char* copyfrom_path; void* deleted_entries; void* deleted_props; void* props; int * headers; int copyfrom_rev; int * pool; struct dump_edit_baton* eb; } ;
typedef int apr_pool_t ;


 void* apr_hash_make (int *) ;
 struct dir_baton* apr_pcalloc (int *,int) ;
 char* svn_relpath_canonicalize (char const*,int *) ;

__attribute__((used)) static struct dir_baton *
make_dir_baton(const char *path,
               const char *copyfrom_path,
               svn_revnum_t copyfrom_rev,
               void *edit_baton,
               struct dir_baton *pb,
               apr_pool_t *pool)
{
  struct dump_edit_baton *eb = edit_baton;
  struct dir_baton *new_db = apr_pcalloc(pool, sizeof(*new_db));
  const char *repos_relpath;


  if (pb)
    repos_relpath = svn_relpath_canonicalize(path, pool);
  else
    repos_relpath = "";



  if (copyfrom_path)
    copyfrom_path = svn_relpath_canonicalize(copyfrom_path, pool);

  new_db->eb = eb;
  new_db->pool = pool;
  new_db->repos_relpath = repos_relpath;
  new_db->copyfrom_path = copyfrom_path
                            ? svn_relpath_canonicalize(copyfrom_path, pool)
                            : ((void*)0);
  new_db->copyfrom_rev = copyfrom_rev;
  new_db->headers = ((void*)0);
  new_db->props = apr_hash_make(pool);
  new_db->deleted_props = apr_hash_make(pool);
  new_db->deleted_entries = apr_hash_make(pool);

  return new_db;
}
