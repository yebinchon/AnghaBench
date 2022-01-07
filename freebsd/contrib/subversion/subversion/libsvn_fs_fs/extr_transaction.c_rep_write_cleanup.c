
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int apr_err; } ;
typedef TYPE_2__ svn_error_t ;
struct rep_write_baton {int scratch_pool; int lockcookie; TYPE_1__* noderev; int fs; int file; int rep_offset; } ;
typedef int apr_status_t ;
struct TYPE_7__ {int id; } ;


 int APR_SUCCESS ;
 int svn_error_clear (TYPE_2__*) ;
 TYPE_2__* svn_error_compose_create (TYPE_2__*,int ) ;
 int svn_fs_fs__id_txn_id (int ) ;
 int svn_io_file_close (int ,int ) ;
 TYPE_2__* svn_io_file_trunc (int ,int ,int ) ;
 int unlock_proto_rev (int ,int ,int ,int ) ;

__attribute__((used)) static apr_status_t
rep_write_cleanup(void *data)
{
  struct rep_write_baton *b = data;
  svn_error_t *err;


  err = svn_io_file_trunc(b->file, b->rep_offset, b->scratch_pool);
  err = svn_error_compose_create(err, svn_io_file_close(b->file,
                                                        b->scratch_pool));





  err = svn_error_compose_create(err,
                                 unlock_proto_rev(b->fs,
                                     svn_fs_fs__id_txn_id(b->noderev->id),
                                     b->lockcookie, b->scratch_pool));
  if (err)
    {
      apr_status_t rc = err->apr_err;
      svn_error_clear(err);
      return rc;
    }

  return APR_SUCCESS;
}
