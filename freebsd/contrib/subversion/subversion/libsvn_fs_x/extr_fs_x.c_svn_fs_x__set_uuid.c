
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int len; int data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
struct TYPE_10__ {void* instance_id; int flush_to_disk; } ;
typedef TYPE_2__ svn_fs_x__data_t ;
struct TYPE_11__ {int pool; void* uuid; TYPE_2__* fsap_data; } ;
typedef TYPE_3__ svn_fs_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 void* apr_pstrdup (int ,char const*) ;
 int svn_fs_x__path_current (TYPE_3__*,int *) ;
 char* svn_fs_x__path_uuid (TYPE_3__*,int *) ;
 int svn_io_file_create (char const*,int ,int *) ;
 int svn_io_write_atomic2 (char const*,int ,int ,int ,int ,int *) ;
 int svn_stringbuf_appendcstr (TYPE_1__*,char const*) ;
 TYPE_1__* svn_stringbuf_create_empty (int *) ;
 char* svn_uuid_generate (int *) ;

svn_error_t *
svn_fs_x__set_uuid(svn_fs_t *fs,
                   const char *uuid,
                   const char *instance_id,
                   svn_boolean_t overwrite,
                   apr_pool_t *scratch_pool)
{
  svn_fs_x__data_t *ffd = fs->fsap_data;
  const char *uuid_path = svn_fs_x__path_uuid(fs, scratch_pool);
  svn_stringbuf_t *contents = svn_stringbuf_create_empty(scratch_pool);

  if (! uuid)
    uuid = svn_uuid_generate(scratch_pool);

  if (! instance_id)
    instance_id = svn_uuid_generate(scratch_pool);

  svn_stringbuf_appendcstr(contents, uuid);
  svn_stringbuf_appendcstr(contents, "\n");
  svn_stringbuf_appendcstr(contents, instance_id);
  svn_stringbuf_appendcstr(contents, "\n");







  if (! overwrite)
    {

      SVN_ERR(svn_io_file_create(uuid_path, contents->data, scratch_pool));
    }
  else
    {
      SVN_ERR(svn_io_write_atomic2(uuid_path, contents->data, contents->len,

                                   svn_fs_x__path_current(fs, scratch_pool),
                                   ffd->flush_to_disk, scratch_pool));
    }

  fs->uuid = apr_pstrdup(fs->pool, uuid);
  ffd->instance_id = apr_pstrdup(fs->pool, instance_id);

  return SVN_NO_ERROR;
}
