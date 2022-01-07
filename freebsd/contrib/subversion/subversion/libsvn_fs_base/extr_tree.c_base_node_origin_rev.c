
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


struct TYPE_23__ {char* data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_revnum_t ;
struct TYPE_24__ {TYPE_5__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;
struct TYPE_25__ {TYPE_2__* fs; } ;
typedef TYPE_3__ svn_fs_root_t ;
typedef int const svn_fs_id_t ;
struct TYPE_26__ {scalar_t__ apr_err; } ;
typedef TYPE_4__ svn_error_t ;
struct txn_pred_id_args {int revision; int const* id; int const* origin_id; int const* pred_id; int * pool; int node_id; } ;
struct id_created_rev_args {int revision; int const* id; int const* origin_id; int const* pred_id; int * pool; int node_id; } ;
struct get_set_node_origin_args {int revision; int const* id; int const* origin_id; int const* pred_id; int * pool; int node_id; } ;
struct TYPE_27__ {scalar_t__ format; } ;
typedef TYPE_5__ base_fs_data_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (TYPE_4__*) ;
 scalar_t__ SVN_ERR_FS_NO_SUCH_NODE_ORIGIN ;
 scalar_t__ SVN_FS_BASE__MIN_NODE_ORIGINS_FORMAT ;
 int SVN_INVALID_REVNUM ;
 scalar_t__ SVN_IS_VALID_REVNUM (int ) ;
 TYPE_4__* SVN_NO_ERROR ;
 int TRUE ;
 TYPE_4__* base_node_id (int const**,TYPE_3__*,char const*,int *) ;
 TYPE_4__* prev_location (char const**,int *,TYPE_2__*,TYPE_3__*,char const*,int *) ;
 scalar_t__ strcmp (char const*,char*) ;
 int svn_error_clear (TYPE_4__*) ;
 char* svn_fs__canonicalize_abspath (char const*,int *) ;
 int const* svn_fs_base__id_copy (int const*,int *) ;
 int svn_fs_base__id_node_id (int const*) ;
 TYPE_4__* svn_fs_base__retry_txn (TYPE_2__*,int ,struct txn_pred_id_args*,int ,int *) ;
 TYPE_4__* svn_fs_base__revision_root (TYPE_3__**,TYPE_2__*,int ,int *) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 TYPE_1__* svn_stringbuf_create (char const*,int *) ;
 int svn_stringbuf_set (TYPE_1__*,char const*) ;
 int txn_body_get_node_origin ;
 int txn_body_id_created_rev ;
 int txn_body_pred_id ;
 int txn_body_set_node_origin ;

__attribute__((used)) static svn_error_t *
base_node_origin_rev(svn_revnum_t *revision,
                     svn_fs_root_t *root,
                     const char *path,
                     apr_pool_t *pool)
{
  svn_fs_t *fs = root->fs;
  base_fs_data_t *bfd = fs->fsap_data;
  struct get_set_node_origin_args args;
  const svn_fs_id_t *origin_id = ((void*)0);
  struct id_created_rev_args icr_args;



  path = svn_fs__canonicalize_abspath(path, pool);


  if (strcmp(path, "/") == 0)
    {
      *revision = 0;
      return SVN_NO_ERROR;
    }



  if (bfd->format >= SVN_FS_BASE__MIN_NODE_ORIGINS_FORMAT)
    {
      const svn_fs_id_t *id;
      svn_error_t *err;

      SVN_ERR(base_node_id(&id, root, path, pool));
      args.node_id = svn_fs_base__id_node_id(id);
      err = svn_fs_base__retry_txn(root->fs, txn_body_get_node_origin, &args,
                                   FALSE, pool);





      if (! err)
        {
          origin_id = args.origin_id;
        }
      else if (err->apr_err == SVN_ERR_FS_NO_SUCH_NODE_ORIGIN)
        {
          svn_error_clear(err);
          err = SVN_NO_ERROR;
        }
      SVN_ERR(err);
    }


  if (! origin_id)
    {
      svn_fs_root_t *curroot = root;
      apr_pool_t *subpool = svn_pool_create(pool);
      apr_pool_t *predidpool = svn_pool_create(pool);
      svn_stringbuf_t *lastpath =
        svn_stringbuf_create(path, pool);
      svn_revnum_t lastrev = SVN_INVALID_REVNUM;
      const svn_fs_id_t *pred_id;






      while (1)
        {
          svn_revnum_t currev;
          const char *curpath = lastpath->data;




          if (SVN_IS_VALID_REVNUM(lastrev))
            SVN_ERR(svn_fs_base__revision_root(&curroot, fs,
                                               lastrev, subpool));


          SVN_ERR(prev_location(&curpath, &currev, fs, curroot,
                                curpath, subpool));
          if (! curpath)
            break;



          svn_stringbuf_set(lastpath, curpath);
          lastrev = currev;
        }


      SVN_ERR(base_node_id(&pred_id, curroot, lastpath->data, pool));
      while (1)
        {
          struct txn_pred_id_args pid_args;
          svn_pool_clear(subpool);
          pid_args.id = pred_id;
          pid_args.pred_id = ((void*)0);
          pid_args.pool = subpool;
          SVN_ERR(svn_fs_base__retry_txn(fs, txn_body_pred_id, &pid_args,
                                         FALSE, subpool));
          if (! pid_args.pred_id)
            break;
          svn_pool_clear(predidpool);
          pred_id = svn_fs_base__id_copy(pid_args.pred_id, predidpool);
        }


      origin_id = svn_fs_base__id_copy(pred_id, pool);



      if (bfd->format >= SVN_FS_BASE__MIN_NODE_ORIGINS_FORMAT)
        {
          args.origin_id = origin_id;
          SVN_ERR(svn_fs_base__retry_txn(root->fs, txn_body_set_node_origin,
                                         &args, TRUE, subpool));
        }

      svn_pool_destroy(predidpool);
      svn_pool_destroy(subpool);
    }



  icr_args.id = origin_id;
  SVN_ERR(svn_fs_base__retry_txn(root->fs, txn_body_id_created_rev, &icr_args,
                                 TRUE, pool));
  *revision = icr_args.revision;
  return SVN_NO_ERROR;
}
