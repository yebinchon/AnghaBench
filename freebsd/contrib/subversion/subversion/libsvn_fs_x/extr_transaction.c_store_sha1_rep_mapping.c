
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int len; int data; } ;
typedef TYPE_2__ svn_stringbuf_t ;
struct TYPE_13__ {scalar_t__ kind; TYPE_7__* data_rep; } ;
typedef TYPE_3__ svn_fs_x__noderev_t ;
struct TYPE_14__ {scalar_t__ rep_sharing_allowed; } ;
typedef TYPE_4__ svn_fs_x__data_t ;
struct TYPE_15__ {TYPE_4__* fsap_data; } ;
typedef TYPE_5__ svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_int64_t ;
typedef int apr_file_t ;
struct TYPE_11__ {int change_set; } ;
struct TYPE_16__ {int sha1_digest; TYPE_1__ id; scalar_t__ has_sha1; } ;


 int APR_BUFFERED ;
 int APR_CREATE ;
 int APR_OS_DEFAULT ;
 int APR_TRUNCATE ;
 int APR_WRITE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_fs_x__get_txn_id (int ) ;
 char* svn_fs_x__path_txn_sha1 (TYPE_5__*,int ,int ,int *) ;
 TYPE_2__* svn_fs_x__unparse_representation (TYPE_7__*,int,int *,int *) ;
 int svn_io_file_close (int *,int *) ;
 int svn_io_file_open (int **,char const*,int,int ,int *) ;
 int svn_io_file_write_full (int *,int ,int ,int *,int *) ;
 scalar_t__ svn_node_dir ;

__attribute__((used)) static svn_error_t *
store_sha1_rep_mapping(svn_fs_t *fs,
                       svn_fs_x__noderev_t *noderev,
                       apr_pool_t *scratch_pool)
{
  svn_fs_x__data_t *ffd = fs->fsap_data;



  if ( ffd->rep_sharing_allowed
      && noderev->data_rep
      && noderev->data_rep->has_sha1)
    {
      apr_file_t *rep_file;
      apr_int64_t txn_id
        = svn_fs_x__get_txn_id(noderev->data_rep->id.change_set);
      const char *file_name
        = svn_fs_x__path_txn_sha1(fs, txn_id,
                                  noderev->data_rep->sha1_digest,
                                  scratch_pool);
      svn_stringbuf_t *rep_string
        = svn_fs_x__unparse_representation(noderev->data_rep,
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
