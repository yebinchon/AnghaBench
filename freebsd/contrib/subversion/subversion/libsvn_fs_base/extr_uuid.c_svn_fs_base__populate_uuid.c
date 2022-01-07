
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pool; int uuid; } ;
typedef TYPE_1__ svn_fs_t ;
typedef int svn_error_t ;
struct get_uuid_args {int idx; char const** uuid; } ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int apr_pstrdup (int ,char const*) ;
 int svn_fs__check_fs (TYPE_1__*,int ) ;
 int svn_fs_base__retry_txn (TYPE_1__*,int ,struct get_uuid_args*,int ,int *) ;
 int txn_body_get_uuid ;

svn_error_t *
svn_fs_base__populate_uuid(svn_fs_t *fs,
                           apr_pool_t *scratch_pool)
{

  SVN_ERR(svn_fs__check_fs(fs, TRUE));


    {
      const char *uuid;
      struct get_uuid_args args;

      args.idx = 1;
      args.uuid = &uuid;
      SVN_ERR(svn_fs_base__retry_txn(fs, txn_body_get_uuid, &args,
                                     FALSE, scratch_pool));

      if (uuid)
        {

          fs->uuid = apr_pstrdup(fs->pool, uuid);
        }
    }

  return SVN_NO_ERROR;
}
