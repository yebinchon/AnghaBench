
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_fs_x__representation_t ;
struct TYPE_10__ {int rep_cache_db; scalar_t__ rep_sharing_allowed; } ;
typedef TYPE_1__ svn_fs_x__data_t ;
typedef int svn_fs_txn_t ;
struct TYPE_11__ {TYPE_1__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_12__ {int * reps_to_cache; int * reps_pool; int * reps_hash; int * txn; TYPE_2__* fs; int * new_rev_p; } ;
typedef TYPE_3__ commit_baton_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_SQLITE_ROLLBACK_FAILED ;
 int * SVN_NO_ERROR ;
 int * apr_array_make (int *,int,int) ;
 int * apr_hash_make (int *) ;
 int commit_body ;
 int * svn_error_compose_create (int *,int ) ;
 scalar_t__ svn_error_find_cause (int *,int ) ;
 int * svn_error_trace (int *) ;
 int svn_fs_x__close_rep_cache (TYPE_2__*) ;
 int svn_fs_x__open_rep_cache (TYPE_2__*,int *) ;
 int svn_fs_x__with_write_lock (TYPE_2__*,int ,TYPE_3__*,int *) ;
 int svn_sqlite__begin_transaction (int ) ;
 int * svn_sqlite__finish_transaction (int ,int *) ;
 int * write_reps_to_cache (TYPE_2__*,int *,int *) ;

svn_error_t *
svn_fs_x__commit(svn_revnum_t *new_rev_p,
                 svn_fs_t *fs,
                 svn_fs_txn_t *txn,
                 apr_pool_t *scratch_pool)
{
  commit_baton_t cb;
  svn_fs_x__data_t *ffd = fs->fsap_data;

  cb.new_rev_p = new_rev_p;
  cb.fs = fs;
  cb.txn = txn;

  if (ffd->rep_sharing_allowed)
    {
      cb.reps_to_cache = apr_array_make(scratch_pool, 5,
                                        sizeof(svn_fs_x__representation_t *));
      cb.reps_hash = apr_hash_make(scratch_pool);
      cb.reps_pool = scratch_pool;
    }
  else
    {
      cb.reps_to_cache = ((void*)0);
      cb.reps_hash = ((void*)0);
      cb.reps_pool = ((void*)0);
    }

  SVN_ERR(svn_fs_x__with_write_lock(fs, commit_body, &cb, scratch_pool));




  if (ffd->rep_sharing_allowed)
    {
      svn_error_t *err;

      SVN_ERR(svn_fs_x__open_rep_cache(fs, scratch_pool));
      SVN_ERR(svn_sqlite__begin_transaction(ffd->rep_cache_db));
      err = write_reps_to_cache(fs, cb.reps_to_cache, scratch_pool);
      err = svn_sqlite__finish_transaction(ffd->rep_cache_db, err);

      if (svn_error_find_cause(err, SVN_ERR_SQLITE_ROLLBACK_FAILED))
        {



          return svn_error_trace(
              svn_error_compose_create(err,
                                       svn_fs_x__close_rep_cache(fs)));
        }
      else if (err)
        return svn_error_trace(err);
    }

  return SVN_NO_ERROR;
}
