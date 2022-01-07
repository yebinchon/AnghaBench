
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc__db_wcroot_t ;
typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct op_copy_baton {scalar_t__ is_move; scalar_t__* dst_relpath; int * dst_wcroot; scalar_t__* src_relpath; int * src_wcroot; } ;
typedef int apr_pool_t ;
typedef int apr_int64_t ;


 int INVALID_REPOS_ID ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int SVN_WC__DB_WITH_TXN (int *,int *) ;
 int db_op_copy_shadowed_layer (int *,scalar_t__*,int,int *,scalar_t__*,int,int,int ,char const*,int ,int,int *) ;
 int op_depth_of (int*,int *,char const*) ;
 int relpath_depth (scalar_t__*) ;
 int svn_relpath_basename (scalar_t__*,int *) ;
 char* svn_relpath_dirname (scalar_t__*,int *) ;
 char* svn_relpath_join (char const*,int ,int *) ;
 int svn_wc__db_depth_get_info (int *,int *,int *,char const**,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,char const*,int,int *,int *) ;

__attribute__((used)) static svn_error_t *
op_copy_shadowed_layer_txn(svn_wc__db_wcroot_t *wcroot,
                           struct op_copy_baton *ocb,
                           apr_pool_t *scratch_pool)
{
  const char *src_parent_relpath;
  const char *dst_parent_relpath;
  int src_op_depth;
  int dst_op_depth;
  int del_op_depth;
  const char *repos_relpath = ((void*)0);
  apr_int64_t repos_id = INVALID_REPOS_ID;
  svn_revnum_t revision = SVN_INVALID_REVNUM;

  if (wcroot != ocb->dst_wcroot)
    {



      SVN_WC__DB_WITH_TXN(op_copy_shadowed_layer_txn(ocb->dst_wcroot, ocb,
                                                     scratch_pool),
                          ocb->dst_wcroot);

      return SVN_NO_ERROR;
    }





  SVN_ERR_ASSERT(*ocb->src_relpath && *ocb->dst_relpath);

  src_parent_relpath = svn_relpath_dirname(ocb->src_relpath, scratch_pool);
  dst_parent_relpath = svn_relpath_dirname(ocb->dst_relpath, scratch_pool);


  SVN_ERR(op_depth_of(&src_op_depth, ocb->src_wcroot, src_parent_relpath));


  SVN_ERR(op_depth_of(&dst_op_depth, ocb->dst_wcroot, dst_parent_relpath));

  del_op_depth = relpath_depth(ocb->dst_relpath);


  SVN_ERR(svn_wc__db_depth_get_info(((void*)0), ((void*)0), &revision, &repos_relpath,
                                    &repos_id, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                    ((void*)0), ((void*)0), ((void*)0),
                                    ocb->src_wcroot,
                                    src_parent_relpath, src_op_depth,
                                    scratch_pool, scratch_pool));

  if (repos_relpath == ((void*)0))
    {

      return SVN_NO_ERROR;
    }


  repos_relpath = svn_relpath_join(repos_relpath,
                                   svn_relpath_basename(ocb->src_relpath,
                                                        ((void*)0)),
                                   scratch_pool);

  SVN_ERR(db_op_copy_shadowed_layer(
                        ocb->src_wcroot, ocb->src_relpath, src_op_depth,
                        ocb->dst_wcroot, ocb->dst_relpath, dst_op_depth,
                        del_op_depth,
                        repos_id, repos_relpath, revision,
                        (ocb->is_move ? dst_op_depth : 0),
                        scratch_pool));

  return SVN_NO_ERROR;
}
