
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
typedef int * (* svn_cancel_func_t ) (void*) ;
typedef int svn_boolean_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_pool_t ;
typedef int apr_int32_t ;
struct TYPE_3__ {char* name; scalar_t__ filetype; } ;
typedef TYPE_1__ apr_finfo_t ;
typedef int apr_dir_t ;


 scalar_t__ APR_DIR ;
 int APR_FINFO_NAME ;
 int APR_FINFO_TYPE ;
 scalar_t__ APR_LNK ;
 scalar_t__ APR_REG ;
 int APR_STATUS_IS_ENOENT (scalar_t__) ;
 scalar_t__ APR_SUCCESS ;
 int SVN_ERR (int *) ;
 int SVN_ERR_NODE_UNEXPECTED_KIND ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 scalar_t__ apr_dir_close (int *) ;
 scalar_t__ apr_dir_read (TYPE_1__*,int,int *) ;
 int * entry_name_to_utf8 (char const**,char*,char const*,int *) ;
 int * hotcopy_io_dir_file_copy (int *,char const*,char const*,char const*,int *) ;
 scalar_t__ strcmp (char const*,char const*) ;
 char* svn_dirent_join (char const*,char const*,int *) ;
 int svn_dirent_local_style (char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 int * svn_error_wrap_apr (scalar_t__,int ,int ) ;
 int * svn_io_check_path (char const*,scalar_t__*,int *) ;
 int * svn_io_copy_link (char const*,char const*,int *) ;
 int * svn_io_dir_open (int **,char const*,int *) ;
 int * svn_io_make_dir_recursively (char const*,int *) ;
 scalar_t__ svn_node_dir ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

__attribute__((used)) static svn_error_t *
hotcopy_io_copy_dir_recursively(svn_boolean_t *skipped_p,
                                const char *src,
                                const char *dst_parent,
                                const char *dst_basename,
                                svn_boolean_t copy_perms,
                                svn_cancel_func_t cancel_func,
                                void *cancel_baton,
                                apr_pool_t *pool)
{
  svn_node_kind_t kind;
  apr_status_t status;
  const char *dst_path;
  apr_dir_t *this_dir;
  apr_finfo_t this_entry;
  apr_int32_t flags = APR_FINFO_TYPE | APR_FINFO_NAME;


  apr_pool_t *subpool = svn_pool_create(pool);


  dst_path = svn_dirent_join(dst_parent, dst_basename, pool);



  SVN_ERR(svn_io_check_path(src, &kind, subpool));
  if (kind != svn_node_dir)
    return svn_error_createf(SVN_ERR_NODE_UNEXPECTED_KIND, ((void*)0),
                             _("Source '%s' is not a directory"),
                             svn_dirent_local_style(src, pool));

  SVN_ERR(svn_io_check_path(dst_parent, &kind, subpool));
  if (kind != svn_node_dir)
    return svn_error_createf(SVN_ERR_NODE_UNEXPECTED_KIND, ((void*)0),
                             _("Destination '%s' is not a directory"),
                             svn_dirent_local_style(dst_parent, pool));

  SVN_ERR(svn_io_check_path(dst_path, &kind, subpool));



  SVN_ERR(svn_io_make_dir_recursively(dst_path, pool));


  SVN_ERR(svn_io_dir_open(&this_dir, src, subpool));

  for (status = apr_dir_read(&this_entry, flags, this_dir);
       status == APR_SUCCESS;
       status = apr_dir_read(&this_entry, flags, this_dir))
    {
      if ((this_entry.name[0] == '.')
          && ((this_entry.name[1] == '\0')
              || ((this_entry.name[1] == '.')
                  && (this_entry.name[2] == '\0'))))
        {
          continue;
        }
      else
        {
          const char *entryname_utf8;

          if (cancel_func)
            SVN_ERR(cancel_func(cancel_baton));

          SVN_ERR(entry_name_to_utf8(&entryname_utf8, this_entry.name,
                                     src, subpool));
          if (this_entry.filetype == APR_REG)
            {
              SVN_ERR(hotcopy_io_dir_file_copy(skipped_p, src, dst_path,
                                               entryname_utf8, subpool));
            }
          else if (this_entry.filetype == APR_LNK)
            {
              const char *src_target = svn_dirent_join(src, entryname_utf8,
                                                       subpool);
              const char *dst_target = svn_dirent_join(dst_path,
                                                       entryname_utf8,
                                                       subpool);
              SVN_ERR(svn_io_copy_link(src_target, dst_target,
                                       subpool));
            }
          else if (this_entry.filetype == APR_DIR)
            {
              const char *src_target;



              if (strcmp(src, dst_parent) == 0
                  && strcmp(entryname_utf8, dst_basename) == 0)
                continue;

              src_target = svn_dirent_join(src, entryname_utf8, subpool);
              SVN_ERR(hotcopy_io_copy_dir_recursively(skipped_p,
                                                      src_target,
                                                      dst_path,
                                                      entryname_utf8,
                                                      copy_perms,
                                                      cancel_func,
                                                      cancel_baton,
                                                      subpool));
            }


        }
    }

  if (! (APR_STATUS_IS_ENOENT(status)))
    return svn_error_wrap_apr(status, _("Can't read directory '%s'"),
                              svn_dirent_local_style(src, pool));

  status = apr_dir_close(this_dir);
  if (status)
    return svn_error_wrap_apr(status, _("Error closing directory '%s'"),
                              svn_dirent_local_style(src, pool));


  svn_pool_destroy(subpool);

  return SVN_NO_ERROR;
}
