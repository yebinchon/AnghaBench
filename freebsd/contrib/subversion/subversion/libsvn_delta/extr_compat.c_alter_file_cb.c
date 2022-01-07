
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_stream_t ;
typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct TYPE_5__ {scalar_t__ kind; } ;
typedef TYPE_1__ svn_checksum_t ;
struct editor_baton {int edit_pool; int changes; } ;
struct change_node {char const* contents_abspath; int checksum; int contents_changed; int props; int changing; int kind; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 struct change_node* insert_change (char const*,int ) ;
 int svn_checksum_dup (TYPE_1__*,int ) ;
 scalar_t__ svn_checksum_md5 ;
 int svn_io_file_del_on_pool_cleanup ;
 int svn_node_file ;
 int svn_prop_hash_dup (int *,int ) ;
 int * svn_stream_checksummed2 (int *,TYPE_1__**,int *,scalar_t__,int ,int *) ;
 int svn_stream_copy3 (int *,int *,int *,int *,int *) ;
 int svn_stream_open_unique (int **,char const**,int *,int ,int ,int *) ;

__attribute__((used)) static svn_error_t *
alter_file_cb(void *baton,
              const char *relpath,
              svn_revnum_t revision,
              const svn_checksum_t *checksum,
              svn_stream_t *contents,
              apr_hash_t *props,
              apr_pool_t *scratch_pool)
{
  struct editor_baton *eb = baton;
  svn_stream_t *tmp_stream;
  struct change_node *change = insert_change(relpath, eb->changes);





  change->kind = svn_node_file;
  change->changing = revision;
  if (props != ((void*)0))
    change->props = svn_prop_hash_dup(props, eb->edit_pool);

  if (contents)
    {
      const char *tmp_filename;
      svn_checksum_t *md5_checksum;


      if (checksum && checksum->kind == svn_checksum_md5)
        md5_checksum = (svn_checksum_t *)checksum;
      else
        contents = svn_stream_checksummed2(contents, &md5_checksum, ((void*)0),
                                           svn_checksum_md5, TRUE,
                                           scratch_pool);


      SVN_ERR(svn_stream_open_unique(&tmp_stream, &tmp_filename, ((void*)0),
                                     svn_io_file_del_on_pool_cleanup,
                                     eb->edit_pool, scratch_pool));
      SVN_ERR(svn_stream_copy3(contents, tmp_stream, ((void*)0), ((void*)0),
                               scratch_pool));

      change->contents_changed = TRUE;
      change->contents_abspath = tmp_filename;
      change->checksum = svn_checksum_dup(md5_checksum, eb->edit_pool);
    }

  return SVN_NO_ERROR;
}
