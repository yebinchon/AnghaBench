
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_15__ ;


struct TYPE_19__ {int db_txn; } ;
typedef TYPE_1__ trail_t ;
typedef int svn_skel_t ;
struct TYPE_20__ {TYPE_4__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_21__ {scalar_t__ kind; int path; } ;
typedef TYPE_3__ change_t ;
struct TYPE_22__ {TYPE_15__* changes; } ;
typedef TYPE_4__ base_fs_data_t ;
typedef int apr_ssize_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;
struct TYPE_23__ {int size; int data; } ;
struct TYPE_18__ {int (* cursor ) (TYPE_15__*,int ,int **,int ) ;} ;
typedef TYPE_5__ DBT ;
typedef int DBC ;


 int * BDB_WRAP (TYPE_2__*,int ,int) ;
 int DB_NEXT_DUP ;
 int DB_NOTFOUND ;
 int DB_SET ;
 int N_ (char*) ;
 int SVN_ERR (int *) ;
 int SVN_ERR_FS_CORRUPT ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_make (int *) ;
 int * apr_hash_next (int *) ;
 int apr_hash_set (int *,void const*,int ,int *) ;
 int apr_hash_this (int *,void const**,int *,int *) ;
 int * fold_change (int *,int *,TYPE_3__*) ;
 int stub1 (TYPE_15__*,int ,int **,int ) ;
 int svn_bdb_dbc_close (int *) ;
 int svn_bdb_dbc_get (int *,TYPE_5__*,TYPE_5__*,int ) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 int * svn_error_trace (int *) ;
 int * svn_fs_base__parse_change_skel (TYPE_3__**,int *,int *) ;
 int svn_fs_base__result_dbt (TYPE_5__*) ;
 int svn_fs_base__str_to_dbt (TYPE_5__*,char const*) ;
 int svn_fs_base__track_dbt (TYPE_5__*,int *) ;
 int svn_fs_base__trail_debug (TYPE_1__*,char*,char*) ;
 scalar_t__ svn_fs_path_change_delete ;
 scalar_t__ svn_fs_path_change_replace ;
 char* svn_fspath__skip_ancestor (int ,void const*) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int * svn_skel__parse (int ,int ,int *) ;

svn_error_t *
svn_fs_bdb__changes_fetch(apr_hash_t **changes_p,
                          svn_fs_t *fs,
                          const char *key,
                          trail_t *trail,
                          apr_pool_t *pool)
{
  base_fs_data_t *bfd = fs->fsap_data;
  DBC *cursor;
  DBT query, result;
  int db_err = 0, db_c_err = 0;
  svn_error_t *err = SVN_NO_ERROR;
  apr_hash_t *changes = apr_hash_make(pool);
  apr_pool_t *subpool = svn_pool_create(pool);
  apr_pool_t *iterpool = svn_pool_create(pool);
  apr_hash_t *deletions = apr_hash_make(subpool);



  svn_fs_base__trail_debug(trail, "changes", "cursor");
  SVN_ERR(BDB_WRAP(fs, N_("creating cursor for reading changes"),
                   bfd->changes->cursor(bfd->changes, trail->db_txn,
                                        &cursor, 0)));


  svn_fs_base__str_to_dbt(&query, key);
  svn_fs_base__result_dbt(&result);
  db_err = svn_bdb_dbc_get(cursor, &query, &result, DB_SET);
  if (! db_err)
    svn_fs_base__track_dbt(&result, pool);

  while (! db_err)
    {
      change_t *change;
      svn_skel_t *result_skel;


      svn_pool_clear(iterpool);



      result_skel = svn_skel__parse(result.data, result.size, iterpool);
      if (! result_skel)
        {
          err = svn_error_createf(SVN_ERR_FS_CORRUPT, ((void*)0),
                                  _("Error reading changes for key '%s'"),
                                  key);
          goto cleanup;
        }
      err = svn_fs_base__parse_change_skel(&change, result_skel, iterpool);
      if (err)
        goto cleanup;


      err = fold_change(changes, deletions, change);
      if (err)
        goto cleanup;
      if ((change->kind == svn_fs_path_change_delete)
          || (change->kind == svn_fs_path_change_replace))
        {
          apr_hash_index_t *hi;

          for (hi = apr_hash_first(iterpool, changes);
               hi;
               hi = apr_hash_next(hi))
            {

              const void *hashkey;
              apr_ssize_t klen;
              const char *child_relpath;

              apr_hash_this(hi, &hashkey, &klen, ((void*)0));



              child_relpath = svn_fspath__skip_ancestor(change->path, hashkey);
              if (child_relpath && *child_relpath)
                apr_hash_set(changes, hashkey, klen, ((void*)0));
            }
        }



      svn_fs_base__result_dbt(&result);
      db_err = svn_bdb_dbc_get(cursor, &query, &result, DB_NEXT_DUP);
      if (! db_err)
        svn_fs_base__track_dbt(&result, pool);
    }


  svn_pool_destroy(iterpool);
  svn_pool_destroy(subpool);




  if (db_err && (db_err != DB_NOTFOUND))
    err = BDB_WRAP(fs, N_("fetching changes"), db_err);

 cleanup:

  db_c_err = svn_bdb_dbc_close(cursor);


  if (err)
    return svn_error_trace(err);



  if (db_c_err)
    SVN_ERR(BDB_WRAP(fs, N_("closing changes cursor"), db_c_err));


  *changes_p = changes;
  return SVN_NO_ERROR;
}
