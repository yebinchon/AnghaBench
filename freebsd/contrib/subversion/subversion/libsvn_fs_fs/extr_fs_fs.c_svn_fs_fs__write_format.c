
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int len; int data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
struct TYPE_9__ {TYPE_3__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_10__ {int format; int flush_to_disk; scalar_t__ use_log_addressing; scalar_t__ max_files_per_dir; } ;
typedef TYPE_3__ fs_fs_data_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int SVN_FS_FS__FORMAT_NUMBER ;
 int SVN_FS_FS__MIN_LAYOUT_FORMAT_OPTION_FORMAT ;
 int SVN_FS_FS__MIN_LOG_ADDRESSING_FORMAT ;
 char* apr_psprintf (int *,char*,scalar_t__) ;
 char* path_format (TYPE_2__*,int *) ;
 int svn_io_file_create (char const*,int ,int *) ;
 int * svn_io_set_file_read_only (char const*,int ,int *) ;
 int svn_io_write_atomic2 (char const*,int ,int ,int *,int ,int *) ;
 int svn_stringbuf_appendcstr (TYPE_1__*,char*) ;
 TYPE_1__* svn_stringbuf_createf (int *,char*,int) ;

svn_error_t *
svn_fs_fs__write_format(svn_fs_t *fs,
                        svn_boolean_t overwrite,
                        apr_pool_t *pool)
{
  svn_stringbuf_t *sb;
  fs_fs_data_t *ffd = fs->fsap_data;
  const char *path = path_format(fs, pool);

  SVN_ERR_ASSERT(1 <= ffd->format
                 && ffd->format <= SVN_FS_FS__FORMAT_NUMBER);

  sb = svn_stringbuf_createf(pool, "%d\n", ffd->format);

  if (ffd->format >= SVN_FS_FS__MIN_LAYOUT_FORMAT_OPTION_FORMAT)
    {
      if (ffd->max_files_per_dir)
        svn_stringbuf_appendcstr(sb, apr_psprintf(pool, "layout sharded %d\n",
                                                  ffd->max_files_per_dir));
      else
        svn_stringbuf_appendcstr(sb, "layout linear\n");
    }

  if (ffd->format >= SVN_FS_FS__MIN_LOG_ADDRESSING_FORMAT)
    {
      if (ffd->use_log_addressing)
        svn_stringbuf_appendcstr(sb, "addressing logical\n");
      else
        svn_stringbuf_appendcstr(sb, "addressing physical\n");
    }




  if (! overwrite)
    {

      SVN_ERR(svn_io_file_create(path, sb->data, pool));
    }
  else
    {
      SVN_ERR(svn_io_write_atomic2(path, sb->data, sb->len,
                                   ((void*)0) ,
                                   ffd->flush_to_disk, pool));
    }


  return svn_io_set_file_read_only(path, FALSE, pool);
}
