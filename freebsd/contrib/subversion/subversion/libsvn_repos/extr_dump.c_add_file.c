
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct edit_baton {scalar_t__ notify_func; scalar_t__ check_normalization; scalar_t__ verify; } ;
struct dir_baton {int check_name_collision; int deleted_entries; struct edit_baton* edit_baton; } ;
typedef int apr_pool_t ;


 scalar_t__ ARE_VALID_COPY_ARGS (char const*,int ) ;
 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int dump_node (struct edit_baton*,char const*,int ,int ,scalar_t__,char const*,int ,int *) ;
 void* svn_hash_gets (int ,char const*) ;
 int svn_hash_sets (int ,char const*,int *) ;
 int svn_node_action_add ;
 int svn_node_action_replace ;
 int svn_node_file ;

__attribute__((used)) static svn_error_t *
add_file(const char *path,
         void *parent_baton,
         const char *copyfrom_path,
         svn_revnum_t copyfrom_rev,
         apr_pool_t *pool,
         void **file_baton)
{
  struct dir_baton *pb = parent_baton;
  struct edit_baton *eb = pb->edit_baton;
  void *was_deleted;
  svn_boolean_t is_copy = FALSE;


  was_deleted = svn_hash_gets(pb->deleted_entries, path);


  is_copy = ARE_VALID_COPY_ARGS(copyfrom_path, copyfrom_rev);


  SVN_ERR(dump_node(eb, path,
                    svn_node_file,
                    was_deleted ? svn_node_action_replace : svn_node_action_add,
                    is_copy,
                    is_copy ? copyfrom_path : ((void*)0),
                    is_copy ? copyfrom_rev : SVN_INVALID_REVNUM,
                    pool));

  if (was_deleted)

    svn_hash_sets(pb->deleted_entries, path, ((void*)0));



  if (!was_deleted && eb->verify && eb->check_normalization && eb->notify_func)
    {
      pb->check_name_collision = TRUE;
    }

  *file_baton = ((void*)0);
  return SVN_NO_ERROR;
}
