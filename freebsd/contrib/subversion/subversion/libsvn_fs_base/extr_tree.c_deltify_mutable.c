
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ svn_revnum_t ;
typedef scalar_t__ svn_node_kind_t ;
struct TYPE_12__ {TYPE_4__* fsap_data; } ;
typedef TYPE_1__ svn_fs_t ;
struct TYPE_13__ {scalar_t__ rev; } ;
typedef TYPE_2__ svn_fs_root_t ;
typedef int svn_fs_id_t ;
struct TYPE_14__ {scalar_t__ kind; int * id; } ;
typedef TYPE_3__ svn_fs_dirent_t ;
typedef int svn_error_t ;
struct txn_pred_id_args {char const* txn_id; int is_dir; int pred_count; int const* base_id; int const* tgt_id; int * pred_id; int * pool; int const* id; } ;
struct txn_pred_count_args {char const* txn_id; int is_dir; int pred_count; int const* base_id; int const* tgt_id; int * pred_id; int * pool; int const* id; } ;
struct txn_deltify_args {char const* txn_id; int is_dir; int pred_count; int const* base_id; int const* tgt_id; int * pred_id; int * pool; int const* id; } ;
struct TYPE_15__ {scalar_t__ format; } ;
typedef TYPE_4__ base_fs_data_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int FALSE ;
 int SVN_ERR (int *) ;
 int SVN_ERR_FS_CORRUPT ;
 scalar_t__ SVN_FS_BASE__MIN_FORWARD_DELTAS_FORMAT ;
 scalar_t__ SVN_FS_BASE__MIN_MISCELLANY_FORMAT ;
 int SVN_FS_BASE__MISC_FORWARD_DELTA_UPGRADE ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_next (int *) ;
 int apr_hash_this (int *,void const**,int *,void**) ;
 int * base_check_path (scalar_t__*,TYPE_2__*,char const*,int *) ;
 int * base_dir_entries (int **,TYPE_2__*,char const*,int *) ;
 int * base_node_id (int const**,TYPE_2__*,char const*,int *) ;
 scalar_t__ strcmp (int ,char const*) ;
 int * svn_error_create (int ,int ,int ) ;
 int svn_fs_base__id_txn_id (int const*) ;
 int * svn_fs_base__miscellaneous_get (char const**,TYPE_1__*,int ,int *) ;
 int * svn_fs_base__retry_txn (TYPE_1__*,int ,struct txn_pred_id_args*,int ,int *) ;
 char* svn_fspath__join (char const*,void const*,int *) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_unknown ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int * svn_revnum_parse (scalar_t__*,char const*,int *) ;
 int txn_body_pred_count ;
 int txn_body_pred_id ;
 int txn_body_txn_deltify ;

__attribute__((used)) static svn_error_t *
deltify_mutable(svn_fs_t *fs,
                svn_fs_root_t *root,
                const char *path,
                const svn_fs_id_t *node_id,
                svn_node_kind_t kind,
                const char *txn_id,
                apr_pool_t *pool)
{
  const svn_fs_id_t *id = node_id;
  apr_hash_t *entries = ((void*)0);
  struct txn_deltify_args td_args;
  base_fs_data_t *bfd = fs->fsap_data;


  if (! node_id)
    SVN_ERR(base_node_id(&id, root, path, pool));





  if (strcmp(svn_fs_base__id_txn_id(id), txn_id))
    return SVN_NO_ERROR;


  if (kind == svn_node_unknown)
    SVN_ERR(base_check_path(&kind, root, path, pool));


  if (kind == svn_node_dir)
    SVN_ERR(base_dir_entries(&entries, root, path, pool));


  if (entries)
    {
      apr_pool_t *subpool = svn_pool_create(pool);
      apr_hash_index_t *hi;

      for (hi = apr_hash_first(pool, entries); hi; hi = apr_hash_next(hi))
        {

          const void *key;
          void *val;
          svn_fs_dirent_t *entry;
          svn_pool_clear(subpool);
          apr_hash_this(hi, &key, ((void*)0), &val);
          entry = val;
          SVN_ERR(deltify_mutable(fs, root,
                                  svn_fspath__join(path, key, subpool),
                                  entry->id, entry->kind, txn_id, subpool));
        }

      svn_pool_destroy(subpool);
    }


  td_args.txn_id = txn_id;
  td_args.tgt_id = id;
  td_args.base_id = ((void*)0);
  td_args.is_dir = (kind == svn_node_dir);
  SVN_ERR(svn_fs_base__retry_txn(fs, txn_body_txn_deltify, &td_args,
                                 TRUE, pool));


  {
    int pred_count;
    const svn_fs_id_t *pred_id;
    struct txn_pred_count_args tpc_args;
    apr_pool_t *subpools[2];
    int active_subpool = 0;
    svn_revnum_t forward_delta_rev = 0;

    tpc_args.id = id;
    SVN_ERR(svn_fs_base__retry_txn(fs, txn_body_pred_count, &tpc_args,
                                   TRUE, pool));
    pred_count = tpc_args.pred_count;


    if (pred_count == 0)
      return SVN_NO_ERROR;

    subpools[0] = svn_pool_create(pool);
    subpools[1] = svn_pool_create(pool);
    if (bfd->format >= SVN_FS_BASE__MIN_MISCELLANY_FORMAT)
      {
        const char *val;
        SVN_ERR(svn_fs_base__miscellaneous_get
                (&val, fs, SVN_FS_BASE__MISC_FORWARD_DELTA_UPGRADE, pool));
        if (val)
          SVN_ERR(svn_revnum_parse(&forward_delta_rev, val, ((void*)0)));
      }

    if (bfd->format >= SVN_FS_BASE__MIN_FORWARD_DELTAS_FORMAT
          && forward_delta_rev <= root->rev)
      {






        pred_count = pred_count & (pred_count - 1);





        pred_id = id;





        while ((pred_count++) < tpc_args.pred_count)
          {
            struct txn_pred_id_args tpi_args;

            active_subpool = !active_subpool;
            svn_pool_clear(subpools[active_subpool]);

            tpi_args.id = pred_id;
            tpi_args.pool = subpools[active_subpool];
            SVN_ERR(svn_fs_base__retry_txn(fs, txn_body_pred_id, &tpi_args,
                                           FALSE, subpools[active_subpool]));
            pred_id = tpi_args.pred_id;

            if (pred_id == ((void*)0))
              return svn_error_create
                (SVN_ERR_FS_CORRUPT, 0,
                 _("Corrupt DB: faulty predecessor count"));

          }


        td_args.txn_id = txn_id;
        td_args.tgt_id = id;
        td_args.base_id = pred_id;
        td_args.is_dir = (kind == svn_node_dir);
        SVN_ERR(svn_fs_base__retry_txn(fs, txn_body_txn_deltify, &td_args,
                                       TRUE, subpools[active_subpool]));
      }
    else
      {
        int nlevels, lev, count;






        nlevels = 1;
        if (pred_count >= 32)
          {
            while (pred_count % 2 == 0)
              {
                pred_count /= 2;
                nlevels++;
              }


            if (1 << (nlevels - 1) == pred_count)
              nlevels--;
          }


        count = 0;
        pred_id = id;





        for (lev = 0; lev < nlevels; lev++)
          {


            if (lev == 1)
              continue;




            while (count < (1 << lev))
              {
                struct txn_pred_id_args tpi_args;

                active_subpool = !active_subpool;
                svn_pool_clear(subpools[active_subpool]);

                tpi_args.id = pred_id;
                tpi_args.pool = subpools[active_subpool];
                SVN_ERR(svn_fs_base__retry_txn(fs, txn_body_pred_id,
                                               &tpi_args, FALSE,
                                               subpools[active_subpool]));
                pred_id = tpi_args.pred_id;

                if (pred_id == ((void*)0))
                  return svn_error_create
                    (SVN_ERR_FS_CORRUPT, 0,
                     _("Corrupt DB: faulty predecessor count"));

                count++;
              }


            td_args.txn_id = ((void*)0);
            td_args.tgt_id = pred_id;
            td_args.base_id = id;
            td_args.is_dir = (kind == svn_node_dir);
            SVN_ERR(svn_fs_base__retry_txn(fs, txn_body_txn_deltify, &td_args,
                                           TRUE, subpools[active_subpool]));

          }
      }

    svn_pool_destroy(subpools[0]);
    svn_pool_destroy(subpools[1]);
  }

  return SVN_NO_ERROR;
}
