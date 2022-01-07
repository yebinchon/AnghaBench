
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_fs_t ;
struct TYPE_6__ {int file; } ;
typedef TYPE_1__ svn_fs_fs__revision_file_t ;
typedef int svn_error_t ;
struct TYPE_7__ {int item_index; int txn_id; } ;
typedef TYPE_2__ representation_t ;
typedef int apr_pool_t ;
typedef int apr_off_t ;


 int SVN_ERR (int ) ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int aligned_seek (int *,int ,int *,int ,int *) ;
 int svn_fs_fs__item_offset (int *,int *,int *,int ,int *,int ,int *) ;
 int svn_fs_fs__open_proto_rev_file (TYPE_1__**,int *,int *,int *,int *) ;

__attribute__((used)) static svn_error_t *
open_and_seek_transaction(svn_fs_fs__revision_file_t **file,
                          svn_fs_t *fs,
                          representation_t *rep,
                          apr_pool_t *pool)
{
  apr_off_t offset;

  SVN_ERR(svn_fs_fs__open_proto_rev_file(file, fs, &rep->txn_id, pool, pool));

  SVN_ERR(svn_fs_fs__item_offset(&offset, fs, ((void*)0), SVN_INVALID_REVNUM,
                                 &rep->txn_id, rep->item_index, pool));
  SVN_ERR(aligned_seek(fs, (*file)->file, ((void*)0), offset, pool));

  return SVN_NO_ERROR;
}
