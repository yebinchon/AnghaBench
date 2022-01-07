
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_stream_t ;
typedef int svn_ra_session_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
struct TYPE_3__ {int rev; } ;
typedef TYPE_1__ svn_client__pathrev_t ;
typedef int svn_boolean_t ;
struct edit_baton {char const* root_path; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int SVN_ERR_ILLEGAL_TARGET ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 int add_file_ev2 (struct edit_baton*,char*,int *,int *,int *,int ,int *) ;
 int append_basename_if_dir (char const**,char const*,int ,int *) ;
 int svn_dirent_local_style (char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 int svn_io_check_path (char const*,scalar_t__*,int *) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_file ;
 scalar_t__ svn_node_unknown ;
 scalar_t__ svn_path_is_empty (char const*) ;
 int svn_path_is_url (char const*) ;
 int svn_ra_get_file (int *,char*,int ,int *,int *,int **,int *) ;
 int * svn_stream_buffered (int *) ;
 char* svn_uri_basename (char const*,int *) ;

__attribute__((used)) static svn_error_t *
export_file_ev2(const char *from_url,
                const char *to_path,
                struct edit_baton *eb,
                svn_client__pathrev_t *loc,
                svn_ra_session_t *ra_session,
                svn_boolean_t overwrite,
                apr_pool_t *scratch_pool)
{
  apr_hash_t *props;
  svn_stream_t *tmp_stream;
  svn_node_kind_t to_kind;

  SVN_ERR_ASSERT(svn_path_is_url(from_url));

  if (svn_path_is_empty(to_path))
    {
      to_path = svn_uri_basename(from_url, scratch_pool);
      eb->root_path = to_path;
    }
  else
    {
      SVN_ERR(append_basename_if_dir(&to_path, from_url,
                                     TRUE, scratch_pool));
      eb->root_path = to_path;
    }

  SVN_ERR(svn_io_check_path(to_path, &to_kind, scratch_pool));

  if ((to_kind == svn_node_file || to_kind == svn_node_unknown) &&
      ! overwrite)
    return svn_error_createf(SVN_ERR_ILLEGAL_TARGET, ((void*)0),
                             _("Destination file '%s' exists, and "
                               "will not be overwritten unless forced"),
                             svn_dirent_local_style(to_path, scratch_pool));
  else if (to_kind == svn_node_dir)
    return svn_error_createf(SVN_ERR_ILLEGAL_TARGET, ((void*)0),
                             _("Destination '%s' exists. Cannot "
                               "overwrite directory with non-directory"),
                             svn_dirent_local_style(to_path, scratch_pool));

  tmp_stream = svn_stream_buffered(scratch_pool);

  SVN_ERR(svn_ra_get_file(ra_session, "", loc->rev,
                          tmp_stream, ((void*)0), &props, scratch_pool));



  SVN_ERR(add_file_ev2(eb, "", ((void*)0), tmp_stream, props, SVN_INVALID_REVNUM,
                       scratch_pool));

  return SVN_NO_ERROR;
}
