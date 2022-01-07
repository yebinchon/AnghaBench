
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
struct TYPE_5__ {int pool; int root_op; } ;
typedef TYPE_1__ svn_client__mtcc_t ;
typedef int mtcc_op_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int MTCC_UNMODIFIED (TYPE_1__*) ;
 int SVN_ERR (int ) ;
 int SVN_ERR_FS_ALREADY_EXISTS ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 int mtcc_op_find (int **,int *,char const*,int ,int ,int ,int ,int ,int *) ;
 int svn_client__mtcc_check_path (scalar_t__*,char const*,int ,TYPE_1__*,int *) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 scalar_t__ svn_node_none ;

__attribute__((used)) static svn_error_t *
mtcc_verify_create(svn_client__mtcc_t *mtcc,
                   const char *new_relpath,
                   apr_pool_t *scratch_pool)
{
  svn_node_kind_t kind;

  if (*new_relpath || !MTCC_UNMODIFIED(mtcc))
    {
      mtcc_op_t *op;

      SVN_ERR(mtcc_op_find(&op, ((void*)0), new_relpath, mtcc->root_op, TRUE, FALSE,
                           FALSE, mtcc->pool, scratch_pool));

      if (op)
        return svn_error_createf(SVN_ERR_FS_ALREADY_EXISTS, ((void*)0),
                                 _("Path '%s' already exists"),
                                 new_relpath);

      SVN_ERR(mtcc_op_find(&op, ((void*)0), new_relpath, mtcc->root_op, TRUE, TRUE,
                           FALSE, mtcc->pool, scratch_pool));

      if (op)
        return SVN_NO_ERROR;
    }



  SVN_ERR(svn_client__mtcc_check_path(&kind, new_relpath, FALSE,
                                      mtcc, scratch_pool));

  if (kind != svn_node_none)
    return svn_error_createf(SVN_ERR_FS_ALREADY_EXISTS, ((void*)0),
                             _("Path '%s' already exists"),
                             new_relpath);

  return SVN_NO_ERROR;
}
