
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_revnum_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
typedef int svn_checksum_t ;
struct ev2_edit_baton {int editor; int unlock_baton; int (* do_unlock ) (int ,char const*,int *) ;} ;
struct change_node {scalar_t__ action; scalar_t__ kind; int changing; int * contents_abspath; int copyfrom_rev; int * copyfrom_path; int deleting; int * props; scalar_t__ contents_changed; scalar_t__ unlock; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_array_header_t ;


 scalar_t__ RESTRUCTURE_ADD ;
 scalar_t__ RESTRUCTURE_ADD_ABSENT ;
 scalar_t__ RESTRUCTURE_DELETE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int SVN_IS_VALID_REVNUM (int ) ;
 int * SVN_NO_ERROR ;
 int * apr_hash_make (int *) ;
 int * get_children (struct ev2_edit_baton*,char const*,int *) ;
 int stub1 (int ,char const*,int *) ;
 int * svn_checksum_empty_checksum (int ,int *) ;
 int svn_checksum_sha1 ;
 int svn_editor_add_absent (int ,char const*,scalar_t__,int ) ;
 int svn_editor_add_directory (int ,char const*,int const*,int *,int ) ;
 int svn_editor_add_file (int ,char const*,int *,int *,int *,int ) ;
 int svn_editor_alter_directory (int ,char const*,int ,int *,int *) ;
 int svn_editor_alter_file (int ,char const*,int ,int *,int *,int *) ;
 int svn_editor_copy (int ,int *,int ,char const*,int ) ;
 int svn_editor_delete (int ,char const*,int ) ;
 int svn_io_file_checksum2 (int **,int *,int ,int *) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_file ;
 scalar_t__ svn_node_unknown ;
 int * svn_stream_empty (int *) ;
 int svn_stream_open_readonly (int **,int *,int *,int *) ;

__attribute__((used)) static svn_error_t *
process_actions(struct ev2_edit_baton *eb,
                const char *repos_relpath,
                const struct change_node *change,
                apr_pool_t *scratch_pool)
{
  apr_hash_t *props = ((void*)0);
  svn_stream_t *contents = ((void*)0);
  svn_checksum_t *checksum = ((void*)0);
  svn_node_kind_t kind = svn_node_unknown;

  SVN_ERR_ASSERT(change != ((void*)0));

  if (change->unlock)
    SVN_ERR(eb->do_unlock(eb->unlock_baton, repos_relpath, scratch_pool));

  if (change->action == RESTRUCTURE_DELETE)
    {


      SVN_ERR(svn_editor_delete(eb->editor, repos_relpath,
                                change->deleting));


      return SVN_NO_ERROR;
    }
  if (change->action == RESTRUCTURE_ADD_ABSENT)
    {
      SVN_ERR(svn_editor_add_absent(eb->editor, repos_relpath,
                                    change->kind, change->deleting));


      return SVN_NO_ERROR;
    }

  if (change->contents_changed)
    {


      kind = svn_node_file;

      if (change->contents_abspath)
        {

          SVN_ERR(svn_io_file_checksum2(&checksum, change->contents_abspath,
                                        svn_checksum_sha1, scratch_pool));
          SVN_ERR(svn_stream_open_readonly(&contents, change->contents_abspath,
                                           scratch_pool, scratch_pool));
        }
      else
        {
          contents = svn_stream_empty(scratch_pool);
          checksum = svn_checksum_empty_checksum(svn_checksum_sha1,
                                                 scratch_pool);
        }
    }

  if (change->props != ((void*)0))
    {

      kind = change->kind;
      props = change->props;
    }

  if (change->action == RESTRUCTURE_ADD)
    {

      svn_revnum_t replaces_rev = change->deleting;

      kind = change->kind;

      if (change->copyfrom_path != ((void*)0))
        {
          SVN_ERR(svn_editor_copy(eb->editor, change->copyfrom_path,
                                  change->copyfrom_rev,
                                  repos_relpath, replaces_rev));

        }
      else
        {

          if (props == ((void*)0))
            props = apr_hash_make(scratch_pool);

          if (kind == svn_node_dir)
            {
              const apr_array_header_t *children;

              children = get_children(eb, repos_relpath, scratch_pool);
              SVN_ERR(svn_editor_add_directory(eb->editor, repos_relpath,
                                               children, props,
                                               replaces_rev));
            }
          else
            {



              if (change->contents_abspath == ((void*)0))
                {
                  contents = svn_stream_empty(scratch_pool);
                  checksum = svn_checksum_empty_checksum(svn_checksum_sha1,
                                                         scratch_pool);
                }

              SVN_ERR(svn_editor_add_file(eb->editor, repos_relpath,
                                          checksum, contents, props,
                                          replaces_rev));
            }


          return SVN_NO_ERROR;
        }
    }






  if (props || contents)
    {
      if (kind == svn_node_dir)
        SVN_ERR(svn_editor_alter_directory(eb->editor, repos_relpath,
                                           change->changing, ((void*)0), props));
      else
        SVN_ERR(svn_editor_alter_file(eb->editor, repos_relpath,
                                      change->changing,
                                      checksum, contents, props));
    }

  return SVN_NO_ERROR;
}
