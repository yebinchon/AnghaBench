
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char* data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_revnum_t ;
typedef scalar_t__ svn_node_kind_t ;
struct TYPE_8__ {TYPE_3__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_9__ {int max_files_per_dir; } ;
typedef TYPE_3__ fs_fs_data_t ;
typedef int apr_pool_t ;


 int FALSE ;
 char* PATH_MANIFEST ;
 char* strchr (char*,char) ;
 char* svn_dirent_join (char const*,char*,int *) ;
 int svn_error_clear (int *) ;
 char* svn_fs_fs__path_revprops_pack_shard (TYPE_2__*,int,int *) ;
 int * svn_fs_fs__try_stringbuf_from_file (TYPE_1__**,int*,char const*,int,int *) ;
 int * svn_io_check_path (char*,scalar_t__*,int *) ;
 scalar_t__ svn_node_file ;
 scalar_t__ svn_node_none ;

svn_boolean_t
svn_fs_fs__packed_revprop_available(svn_boolean_t *missing,
                                    svn_fs_t *fs,
                                    svn_revnum_t revision,
                                    apr_pool_t *pool)
{
  fs_fs_data_t *ffd = fs->fsap_data;
  svn_stringbuf_t *content = ((void*)0);


  const char *folder
    = svn_fs_fs__path_revprops_pack_shard(fs, revision, pool);
  const char *manifest_path = svn_dirent_join(folder, PATH_MANIFEST, pool);

  svn_error_t *err = svn_fs_fs__try_stringbuf_from_file(&content,
                                                        missing,
                                                        manifest_path,
                                                        FALSE,
                                                        pool);



  if (err)
    {
      svn_error_clear(err);
      return FALSE;
    }

  if (*missing)
    return FALSE;



  revision = revision < ffd->max_files_per_dir
           ? revision - 1
           : revision % ffd->max_files_per_dir;
  while (content->data)
    {
      char *next = strchr(content->data, '\n');
      if (next)
        {
          *next = 0;
          ++next;
        }

      if (revision-- == 0)
        {

          svn_node_kind_t kind;
          err = svn_io_check_path(svn_dirent_join(folder, content->data,
                                                  pool),
                                  &kind, pool);
          if (err)
            {
              svn_error_clear(err);
              return FALSE;
            }

          *missing = kind == svn_node_none;
          return kind == svn_node_file;
        }

      content->data = next;
    }

  return FALSE;
}
