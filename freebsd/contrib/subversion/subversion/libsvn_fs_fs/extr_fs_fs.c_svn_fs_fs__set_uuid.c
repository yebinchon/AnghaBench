
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int len; int data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
struct TYPE_10__ {void* uuid; int pool; TYPE_3__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_11__ {scalar_t__ format; void* instance_id; int flush_to_disk; } ;
typedef TYPE_3__ fs_fs_data_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 scalar_t__ SVN_FS_FS__MIN_INSTANCE_ID_FORMAT ;
 int * SVN_NO_ERROR ;
 void* apr_pstrdup (int ,char const*) ;
 char* path_uuid (TYPE_2__*,int *) ;
 int svn_fs_fs__path_current (TYPE_2__*,int *) ;
 int svn_io_write_atomic2 (char const*,int ,int ,int ,int ,int *) ;
 int svn_stringbuf_appendcstr (TYPE_1__*,char const*) ;
 TYPE_1__* svn_stringbuf_create_empty (int *) ;
 char* svn_uuid_generate (int *) ;

svn_error_t *
svn_fs_fs__set_uuid(svn_fs_t *fs,
                    const char *uuid,
                    const char *instance_id,
                    apr_pool_t *pool)
{
  fs_fs_data_t *ffd = fs->fsap_data;
  const char *uuid_path = path_uuid(fs, pool);
  svn_stringbuf_t *contents = svn_stringbuf_create_empty(pool);

  if (! uuid)
    uuid = svn_uuid_generate(pool);

  if (! instance_id)
    instance_id = svn_uuid_generate(pool);

  svn_stringbuf_appendcstr(contents, uuid);
  svn_stringbuf_appendcstr(contents, "\n");

  if (ffd->format >= SVN_FS_FS__MIN_INSTANCE_ID_FORMAT)
    {
      svn_stringbuf_appendcstr(contents, instance_id);
      svn_stringbuf_appendcstr(contents, "\n");
    }



  SVN_ERR(svn_io_write_atomic2(uuid_path, contents->data, contents->len,
                               svn_fs_fs__path_current(fs, pool) ,
                               ffd->flush_to_disk, pool));

  fs->uuid = apr_pstrdup(fs->pool, uuid);

  if (ffd->format >= SVN_FS_FS__MIN_INSTANCE_ID_FORMAT)
    ffd->instance_id = apr_pstrdup(fs->pool, instance_id);
  else
    ffd->instance_id = fs->uuid;

  return SVN_NO_ERROR;
}
