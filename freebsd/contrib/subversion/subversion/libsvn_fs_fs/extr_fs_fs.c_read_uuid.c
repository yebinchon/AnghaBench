
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void* uuid; int pool; TYPE_2__* fsap_data; } ;
typedef TYPE_1__ svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_6__ {scalar_t__ format; void* instance_id; } ;
typedef TYPE_2__ fs_fs_data_t ;
typedef int buf ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;


 int APR_BUFFERED ;
 int APR_OS_DEFAULT ;
 int APR_READ ;
 int APR_UUID_FORMATTED_LENGTH ;
 int SVN_ERR (int ) ;
 scalar_t__ SVN_FS_FS__MIN_INSTANCE_ID_FORMAT ;
 int * SVN_NO_ERROR ;
 void* apr_pstrdup (int ,char*) ;
 int path_uuid (TYPE_1__*,int *) ;
 int svn_io_file_close (int *,int *) ;
 int svn_io_file_open (int **,int ,int,int ,int *) ;
 int svn_io_read_length_line (int *,char*,int*,int *) ;

__attribute__((used)) static svn_error_t *
read_uuid(svn_fs_t *fs,
          apr_pool_t *scratch_pool)
{
  fs_fs_data_t *ffd = fs->fsap_data;
  apr_file_t *uuid_file;
  char buf[APR_UUID_FORMATTED_LENGTH + 2];
  apr_size_t limit;


  SVN_ERR(svn_io_file_open(&uuid_file, path_uuid(fs, scratch_pool),
                           APR_READ | APR_BUFFERED, APR_OS_DEFAULT,
                           scratch_pool));

  limit = sizeof(buf);
  SVN_ERR(svn_io_read_length_line(uuid_file, buf, &limit, scratch_pool));
  fs->uuid = apr_pstrdup(fs->pool, buf);


  if (ffd->format >= SVN_FS_FS__MIN_INSTANCE_ID_FORMAT)
    {
      limit = sizeof(buf);
      SVN_ERR(svn_io_read_length_line(uuid_file, buf, &limit,
                                      scratch_pool));
      ffd->instance_id = apr_pstrdup(fs->pool, buf);
    }
  else
    {
      ffd->instance_id = fs->uuid;
    }

  SVN_ERR(svn_io_file_close(uuid_file, scratch_pool));

  return SVN_NO_ERROR;
}
