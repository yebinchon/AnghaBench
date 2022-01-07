
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int mtime; int filesize; int special; int kind; } ;
typedef TYPE_1__ svn_io_dirent2_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_pool_t ;
typedef int apr_int32_t ;
typedef int apr_hash_t ;
struct TYPE_8__ {char* name; int mtime; int size; } ;
typedef TYPE_2__ apr_finfo_t ;
typedef int apr_dir_t ;


 int APR_FINFO_MTIME ;
 int APR_FINFO_NAME ;
 int APR_FINFO_SIZE ;
 int APR_FINFO_TYPE ;
 int APR_STATUS_IS_ENOENT (scalar_t__) ;
 scalar_t__ APR_SUCCESS ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 scalar_t__ apr_dir_close (int *) ;
 scalar_t__ apr_dir_read (TYPE_2__*,int,int *) ;
 int * apr_hash_make (int *) ;
 int entry_name_to_utf8 (char const**,char*,char const*,int *) ;
 int map_apr_finfo_to_node_kind (int *,int *,TYPE_2__*) ;
 int svn_dirent_local_style (char const*,int *) ;
 int * svn_error_wrap_apr (scalar_t__,int ,int ) ;
 int svn_hash_sets (int *,char const*,TYPE_1__*) ;
 int svn_io_dir_open (int **,char const*,int *) ;
 TYPE_1__* svn_io_dirent2_create (int *) ;

svn_error_t *
svn_io_get_dirents3(apr_hash_t **dirents,
                    const char *path,
                    svn_boolean_t only_check_type,
                    apr_pool_t *result_pool,
                    apr_pool_t *scratch_pool)
{
  apr_status_t status;
  apr_dir_t *this_dir;
  apr_finfo_t this_entry;
  apr_int32_t flags = APR_FINFO_TYPE | APR_FINFO_NAME;

  if (!only_check_type)
    flags |= APR_FINFO_SIZE | APR_FINFO_MTIME;

  *dirents = apr_hash_make(result_pool);

  SVN_ERR(svn_io_dir_open(&this_dir, path, scratch_pool));

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
          const char *name;
          svn_io_dirent2_t *dirent = svn_io_dirent2_create(result_pool);

          SVN_ERR(entry_name_to_utf8(&name, this_entry.name, path, result_pool));

          map_apr_finfo_to_node_kind(&(dirent->kind),
                                     &(dirent->special),
                                     &this_entry);

          if (!only_check_type)
            {
              dirent->filesize = this_entry.size;
              dirent->mtime = this_entry.mtime;
            }

          svn_hash_sets(*dirents, name, dirent);
        }
    }

  if (! (APR_STATUS_IS_ENOENT(status)))
    return svn_error_wrap_apr(status, _("Can't read directory '%s'"),
                              svn_dirent_local_style(path, scratch_pool));

  status = apr_dir_close(this_dir);
  if (status)
    return svn_error_wrap_apr(status, _("Error closing directory '%s'"),
                              svn_dirent_local_style(path, scratch_pool));

  return SVN_NO_ERROR;
}
