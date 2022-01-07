
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pool; } ;
typedef TYPE_1__ svn_fs_t ;
typedef int svn_error_t ;


 int TRUE ;
 int * svn_fs_base__retry_txn (TYPE_1__*,int ,int *,int ,int ) ;
 int txn_body_dag_init_fs ;

svn_error_t *
svn_fs_base__dag_init_fs(svn_fs_t *fs)
{
  return svn_fs_base__retry_txn(fs, txn_body_dag_init_fs, ((void*)0),
                                TRUE, fs->pool);
}
