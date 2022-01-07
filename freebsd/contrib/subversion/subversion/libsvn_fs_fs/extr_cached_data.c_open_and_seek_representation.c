
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_fs_t ;
typedef int svn_fs_fs__revision_file_t ;
typedef int svn_error_t ;
struct TYPE_4__ {int item_index; int revision; int txn_id; } ;
typedef TYPE_1__ representation_t ;
typedef int apr_pool_t ;


 int * open_and_seek_revision (int **,int *,int ,int ,int *) ;
 int * open_and_seek_transaction (int **,int *,TYPE_1__*,int *) ;
 int svn_fs_fs__id_txn_used (int *) ;

__attribute__((used)) static svn_error_t *
open_and_seek_representation(svn_fs_fs__revision_file_t **file_p,
                             svn_fs_t *fs,
                             representation_t *rep,
                             apr_pool_t *pool)
{
  if (! svn_fs_fs__id_txn_used(&rep->txn_id))
    return open_and_seek_revision(file_p, fs, rep->revision, rep->item_index,
                                  pool);
  else
    return open_and_seek_transaction(file_p, fs, rep, pool);
}
