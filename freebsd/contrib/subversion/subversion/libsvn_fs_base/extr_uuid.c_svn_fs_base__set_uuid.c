
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pool; int uuid; } ;
typedef TYPE_1__ svn_fs_t ;
typedef int svn_error_t ;
struct set_uuid_args {int idx; char const* uuid; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int apr_pstrdup (int ,char const*) ;
 int svn_fs__check_fs (TYPE_1__*,int ) ;
 int svn_fs_base__retry_txn (TYPE_1__*,int ,struct set_uuid_args*,int ,int *) ;
 char* svn_uuid_generate (int *) ;
 int txn_body_set_uuid ;

svn_error_t *
svn_fs_base__set_uuid(svn_fs_t *fs,
                      const char *uuid,
                      apr_pool_t *pool)
{
  struct set_uuid_args args;

  SVN_ERR(svn_fs__check_fs(fs, TRUE));

  if (! uuid)
    uuid = svn_uuid_generate(pool);

  args.idx = 1;
  args.uuid = uuid;
  SVN_ERR(svn_fs_base__retry_txn(fs, txn_body_set_uuid, &args, TRUE, pool));


  if (uuid)
    fs->uuid = apr_pstrdup(fs->pool, uuid);

  return SVN_NO_ERROR;
}
