
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int svn_fs_x__txn_id_t ;
struct TYPE_11__ {int apr_err; } ;
typedef TYPE_3__ svn_error_t ;
struct TYPE_12__ {int local_pool; int lockcookie; int fs; int file; int rep_offset; TYPE_2__* noderev; } ;
typedef TYPE_4__ rep_write_baton_t ;
typedef int apr_status_t ;
struct TYPE_9__ {int change_set; } ;
struct TYPE_10__ {TYPE_1__ noderev_id; } ;


 int APR_SUCCESS ;
 int svn_error_clear (TYPE_3__*) ;
 TYPE_3__* svn_error_compose_create (TYPE_3__*,int ) ;
 int svn_fs_x__get_txn_id (int ) ;
 int svn_io_file_close (int ,int ) ;
 TYPE_3__* svn_io_file_trunc (int ,int ,int ) ;
 int unlock_proto_rev (int ,int ,int ,int ) ;

__attribute__((used)) static apr_status_t
rep_write_cleanup(void *data)
{
  svn_error_t *err;
  rep_write_baton_t *b = data;
  svn_fs_x__txn_id_t txn_id
    = svn_fs_x__get_txn_id(b->noderev->noderev_id.change_set);


  err = svn_io_file_trunc(b->file, b->rep_offset, b->local_pool);
  err = svn_error_compose_create(err, svn_io_file_close(b->file,
                                                        b->local_pool));





  err = svn_error_compose_create(err,
                                 unlock_proto_rev(b->fs, txn_id,
                                                  b->lockcookie,
                                                  b->local_pool));
  if (err)
    {
      apr_status_t rc = err->apr_err;
      svn_error_clear(err);
      return rc;
    }

  return APR_SUCCESS;
}
