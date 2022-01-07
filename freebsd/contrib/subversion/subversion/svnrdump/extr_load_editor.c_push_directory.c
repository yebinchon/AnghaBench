
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ svn_revnum_t ;
typedef scalar_t__ svn_boolean_t ;
struct revision_baton {struct directory_baton* db; int pool; } ;
struct directory_baton {char const* copyfrom_path; scalar_t__ copyfrom_rev; char const* relpath; struct directory_baton* parent; void* baton; } ;


 scalar_t__ ARE_VALID_COPY_ARGS (char const*,scalar_t__) ;
 int SVN_ERR_ASSERT_NO_RETURN (int) ;
 scalar_t__ SVN_INVALID_REVNUM ;
 struct directory_baton* apr_pcalloc (int ,int) ;
 char* svn_relpath_basename (char const*,int *) ;
 char* svn_relpath_join (char const*,char const*,int ) ;

__attribute__((used)) static void
push_directory(struct revision_baton *rb,
               void *child_baton,
               const char *relpath,
               svn_boolean_t is_added,
               const char *copyfrom_path,
               svn_revnum_t copyfrom_rev)
{
  struct directory_baton *child_db = apr_pcalloc(rb->pool, sizeof (*child_db));

  SVN_ERR_ASSERT_NO_RETURN(
    is_added || (copyfrom_path == ((void*)0) && copyfrom_rev == SVN_INVALID_REVNUM));



  if (!is_added
      && ARE_VALID_COPY_ARGS(rb->db->copyfrom_path, rb->db->copyfrom_rev))
    {
      const char *name = svn_relpath_basename(relpath, ((void*)0));

      copyfrom_path = svn_relpath_join(rb->db->copyfrom_path, name,
                                       rb->pool);
      copyfrom_rev = rb->db->copyfrom_rev;
    }

  child_db->baton = child_baton;
  child_db->relpath = relpath;
  child_db->copyfrom_path = copyfrom_path;
  child_db->copyfrom_rev = copyfrom_rev;
  child_db->parent = rb->db;
  rb->db = child_db;
}
