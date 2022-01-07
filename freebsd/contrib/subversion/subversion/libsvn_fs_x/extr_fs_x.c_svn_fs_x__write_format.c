
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int len; int data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
struct TYPE_9__ {int format; int flush_to_disk; int max_files_per_dir; } ;
typedef TYPE_2__ svn_fs_x__data_t ;
struct TYPE_10__ {TYPE_2__* fsap_data; } ;
typedef TYPE_3__ svn_fs_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int SVN_FS_X__FORMAT_NUMBER ;
 int apr_psprintf (int *,char*,int ) ;
 char* svn_fs_x__path_format (TYPE_3__*,int *) ;
 int svn_io_file_create (char const*,int ,int *) ;
 int * svn_io_set_file_read_only (char const*,int ,int *) ;
 int svn_io_write_atomic2 (char const*,int ,int ,int *,int ,int *) ;
 int svn_stringbuf_appendcstr (TYPE_1__*,int ) ;
 TYPE_1__* svn_stringbuf_createf (int *,char*,int) ;

svn_error_t *
svn_fs_x__write_format(svn_fs_t *fs,
                       svn_boolean_t overwrite,
                       apr_pool_t *scratch_pool)
{
  svn_stringbuf_t *sb;
  const char *path = svn_fs_x__path_format(fs, scratch_pool);
  svn_fs_x__data_t *ffd = fs->fsap_data;

  SVN_ERR_ASSERT(1 <= ffd->format && ffd->format <= SVN_FS_X__FORMAT_NUMBER);

  sb = svn_stringbuf_createf(scratch_pool, "%d\n", ffd->format);
  svn_stringbuf_appendcstr(sb, apr_psprintf(scratch_pool,
                                            "layout sharded %d\n",
                                            ffd->max_files_per_dir));




  if (! overwrite)
    {

      SVN_ERR(svn_io_file_create(path, sb->data, scratch_pool));
    }
  else
    {
      SVN_ERR(svn_io_write_atomic2(path, sb->data, sb->len,
                                   ((void*)0) ,
                                   ffd->flush_to_disk, scratch_pool));
    }


  return svn_io_set_file_read_only(path, FALSE, scratch_pool);
}
