
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {char* data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef scalar_t__ svn_revnum_t ;
typedef int svn_fs_t ;
struct TYPE_14__ {int * fs; } ;
typedef TYPE_2__ svn_fs_root_t ;
typedef int svn_fs_id_t ;
struct TYPE_15__ {scalar_t__ revision; scalar_t__ number; } ;
typedef TYPE_3__ svn_fs_fs__id_part_t ;
typedef int svn_error_t ;
typedef int dag_node_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 scalar_t__ SVN_INVALID_REVNUM ;
 scalar_t__ SVN_IS_VALID_REVNUM (scalar_t__) ;
 int * SVN_NO_ERROR ;
 int prev_location (char const**,scalar_t__*,int *,TYPE_2__*,char const*,int *) ;
 char* svn_fs__canonicalize_abspath (char const*,int *) ;
 int svn_fs_fs__dag_get_id (int *) ;
 int svn_fs_fs__dag_get_node (int **,int *,int const*,int *) ;
 int svn_fs_fs__dag_get_predecessor_id (int const**,int *) ;
 int svn_fs_fs__dag_get_revision (scalar_t__*,int *,int *) ;
 int svn_fs_fs__get_node_origin (int const**,int *,TYPE_3__ const*,int *) ;
 int * svn_fs_fs__id_copy (int const*,int *) ;
 TYPE_3__* svn_fs_fs__id_node_id (int const*) ;
 scalar_t__ svn_fs_fs__id_rev (int const*) ;
 int svn_fs_fs__node_id (int const**,TYPE_2__*,char const*,int *) ;
 int svn_fs_fs__revision_root (TYPE_2__**,int *,scalar_t__,int *) ;
 int svn_fs_fs__set_node_origin (int *,TYPE_3__ const*,int ,int *) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 TYPE_1__* svn_stringbuf_create (char const*,int *) ;
 int svn_stringbuf_set (TYPE_1__*,char const*) ;

__attribute__((used)) static svn_error_t *
fs_node_origin_rev(svn_revnum_t *revision,
                   svn_fs_root_t *root,
                   const char *path,
                   apr_pool_t *pool)
{
  svn_fs_t *fs = root->fs;
  const svn_fs_id_t *given_noderev_id, *cached_origin_id;
  const svn_fs_fs__id_part_t *node_id;

  path = svn_fs__canonicalize_abspath(path, pool);


  SVN_ERR(svn_fs_fs__node_id(&given_noderev_id, root, path, pool));
  node_id = svn_fs_fs__id_node_id(given_noderev_id);





  if (node_id->revision != 0 || node_id->number == 0)
    {
      *revision = node_id->revision;
      return SVN_NO_ERROR;
    }


  SVN_ERR(svn_fs_fs__get_node_origin(&cached_origin_id,
                                     fs,
                                     node_id,
                                     pool));
  if (cached_origin_id != ((void*)0))
    {
      *revision = svn_fs_fs__id_rev(cached_origin_id);
      return SVN_NO_ERROR;
    }

  {


    svn_fs_root_t *curroot = root;
    apr_pool_t *subpool = svn_pool_create(pool);
    apr_pool_t *predidpool = svn_pool_create(pool);
    svn_stringbuf_t *lastpath = svn_stringbuf_create(path, pool);
    svn_revnum_t lastrev = SVN_INVALID_REVNUM;
    dag_node_t *node;
    const svn_fs_id_t *pred_id;






    while (1)
      {
        svn_revnum_t currev;
        const char *curpath = lastpath->data;

        svn_pool_clear(subpool);




        if (SVN_IS_VALID_REVNUM(lastrev))
          SVN_ERR(svn_fs_fs__revision_root(&curroot, fs, lastrev, subpool));


        SVN_ERR(prev_location(&curpath, &currev, fs, curroot, curpath,
                              subpool));
        if (! curpath)
          break;



        svn_stringbuf_set(lastpath, curpath);
        lastrev = currev;
      }


    SVN_ERR(svn_fs_fs__node_id(&pred_id, curroot, lastpath->data, predidpool));
    do
      {
        svn_pool_clear(subpool);
        SVN_ERR(svn_fs_fs__dag_get_node(&node, fs, pred_id, subpool));






        svn_pool_clear(predidpool);
        SVN_ERR(svn_fs_fs__dag_get_predecessor_id(&pred_id, node));
        pred_id = pred_id ? svn_fs_fs__id_copy(pred_id, predidpool) : ((void*)0);
      }
    while (pred_id);



    SVN_ERR(svn_fs_fs__dag_get_revision(revision, node, pool));



    if (node_id->revision != SVN_INVALID_REVNUM)
      SVN_ERR(svn_fs_fs__set_node_origin(fs, node_id,
                                         svn_fs_fs__dag_get_id(node), pool));

    svn_pool_destroy(subpool);
    svn_pool_destroy(predidpool);
    return SVN_NO_ERROR;
  }
}
