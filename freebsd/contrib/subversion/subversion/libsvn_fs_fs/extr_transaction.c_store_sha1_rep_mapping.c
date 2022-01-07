
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int len; int data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
struct TYPE_11__ {TYPE_4__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_12__ {scalar_t__ kind; TYPE_6__* data_rep; } ;
typedef TYPE_3__ node_revision_t ;
struct TYPE_13__ {int format; scalar_t__ rep_sharing_allowed; } ;
typedef TYPE_4__ fs_fs_data_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;
struct TYPE_14__ {int sha1_digest; int txn_id; scalar_t__ has_sha1; } ;


 int APR_BUFFERED ;
 int APR_CREATE ;
 int APR_OS_DEFAULT ;
 int APR_TRUNCATE ;
 int APR_WRITE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 char* path_txn_sha1 (TYPE_2__*,int *,int ,int *) ;
 TYPE_1__* svn_fs_fs__unparse_representation (TYPE_6__*,int ,int,int *,int *) ;
 int svn_io_file_close (int *,int *) ;
 int svn_io_file_open (int **,char const*,int,int ,int *) ;
 int svn_io_file_write_full (int *,int ,int ,int *,int *) ;
 scalar_t__ svn_node_dir ;

__attribute__((used)) static svn_error_t *
store_sha1_rep_mapping(svn_fs_t *fs,
                       node_revision_t *noderev,
                       apr_pool_t *scratch_pool)
{
  fs_fs_data_t *ffd = fs->fsap_data;



  if ( ffd->rep_sharing_allowed
      && noderev->data_rep
      && noderev->data_rep->has_sha1)
    {
      apr_file_t *rep_file;
      const char *file_name = path_txn_sha1(fs,
                                            &noderev->data_rep->txn_id,
                                            noderev->data_rep->sha1_digest,
                                            scratch_pool);
      svn_stringbuf_t *rep_string
        = svn_fs_fs__unparse_representation(noderev->data_rep,
                                            ffd->format,
                                            (noderev->kind == svn_node_dir),
                                            scratch_pool, scratch_pool);
      SVN_ERR(svn_io_file_open(&rep_file, file_name,
                               APR_WRITE | APR_CREATE | APR_TRUNCATE
                               | APR_BUFFERED, APR_OS_DEFAULT, scratch_pool));

      SVN_ERR(svn_io_file_write_full(rep_file, rep_string->data,
                                     rep_string->len, ((void*)0), scratch_pool));

      SVN_ERR(svn_io_file_close(rep_file, scratch_pool));
    }

  return SVN_NO_ERROR;
}
