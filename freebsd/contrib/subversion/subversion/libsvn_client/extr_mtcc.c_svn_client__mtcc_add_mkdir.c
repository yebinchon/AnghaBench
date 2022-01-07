
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_8__ {int pool; TYPE_6__* root_op; } ;
typedef TYPE_1__ svn_client__mtcc_t ;
typedef int svn_boolean_t ;
struct TYPE_9__ {void* kind; } ;
typedef TYPE_2__ mtcc_op_t ;
typedef int apr_pool_t ;
struct TYPE_10__ {void* kind; } ;


 int FALSE ;
 scalar_t__ MTCC_UNMODIFIED (TYPE_1__*) ;
 void* OP_ADD_DIR ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int SVN_ERR_ILLEGAL_TARGET ;
 int * SVN_NO_ERROR ;
 scalar_t__ SVN_PATH_IS_EMPTY (char const*) ;
 int _ (char*) ;
 int mtcc_op_find (TYPE_2__**,int *,char const*,TYPE_6__*,int ,int ,int ,int ,int *) ;
 int mtcc_verify_create (TYPE_1__*,char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 int svn_relpath_is_canonical (char const*) ;

svn_error_t *
svn_client__mtcc_add_mkdir(const char *relpath,
                           svn_client__mtcc_t *mtcc,
                           apr_pool_t *scratch_pool)
{
  mtcc_op_t *op;
  svn_boolean_t created;
  SVN_ERR_ASSERT(svn_relpath_is_canonical(relpath));

  SVN_ERR(mtcc_verify_create(mtcc, relpath, scratch_pool));

  if (SVN_PATH_IS_EMPTY(relpath) && MTCC_UNMODIFIED(mtcc))
    {

      mtcc->root_op->kind = OP_ADD_DIR;

      return SVN_NO_ERROR;
    }

  SVN_ERR(mtcc_op_find(&op, &created, relpath, mtcc->root_op, FALSE, FALSE,
                       FALSE, mtcc->pool, scratch_pool));

  if (!op || !created)
    {
      return svn_error_createf(SVN_ERR_ILLEGAL_TARGET, ((void*)0),
                               _("Can't create directory at '%s'"),
                               relpath);
    }

  op->kind = OP_ADD_DIR;

  return SVN_NO_ERROR;
}
