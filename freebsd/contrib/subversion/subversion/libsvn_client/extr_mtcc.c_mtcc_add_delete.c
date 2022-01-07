
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
struct TYPE_9__ {int pool; TYPE_2__* root_op; } ;
typedef TYPE_1__ svn_client__mtcc_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_10__ {int * prop_mods; int * children; int kind; } ;
typedef TYPE_2__ mtcc_op_t ;
typedef int apr_pool_t ;


 scalar_t__ FALSE ;
 scalar_t__ MTCC_UNMODIFIED (TYPE_1__*) ;
 int OP_DELETE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int SVN_ERR_FS_NOT_FOUND ;
 int SVN_ERR_ILLEGAL_TARGET ;
 int * SVN_NO_ERROR ;
 scalar_t__ SVN_PATH_IS_EMPTY (char const*) ;
 scalar_t__ TRUE ;
 int _ (char*) ;
 scalar_t__ mtcc_op_contains_non_delete (TYPE_2__*) ;
 int mtcc_op_find (TYPE_2__**,scalar_t__*,char const*,TYPE_2__*,scalar_t__,scalar_t__,scalar_t__,int ,int *) ;
 int svn_client__mtcc_check_path (scalar_t__*,char const*,scalar_t__,TYPE_1__*,int *) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 scalar_t__ svn_node_none ;
 int svn_relpath_is_canonical (char const*) ;

__attribute__((used)) static svn_error_t *
mtcc_add_delete(const char *relpath,
                svn_boolean_t for_move,
                svn_client__mtcc_t *mtcc,
                apr_pool_t *scratch_pool)
{
  mtcc_op_t *op;
  svn_boolean_t created;
  svn_node_kind_t kind;

  SVN_ERR_ASSERT(svn_relpath_is_canonical(relpath));

  SVN_ERR(svn_client__mtcc_check_path(&kind, relpath, FALSE,
                                      mtcc, scratch_pool));

  if (kind == svn_node_none)
    return svn_error_createf(SVN_ERR_FS_NOT_FOUND, ((void*)0),
                             _("Can't delete node at '%s' as it "
                                "does not exist"),
                             relpath);

  if (SVN_PATH_IS_EMPTY(relpath) && MTCC_UNMODIFIED(mtcc))
    {

      op = mtcc->root_op;
    }
  else
    {
      SVN_ERR(mtcc_op_find(&op, &created, relpath, mtcc->root_op, FALSE, TRUE,
                           TRUE, mtcc->pool, scratch_pool));

      if (!for_move && !op && !created)
        {



          SVN_ERR(mtcc_op_find(&op, &created, relpath, mtcc->root_op, TRUE,
                  FALSE, FALSE, mtcc->pool, scratch_pool));

          if (op && mtcc_op_contains_non_delete(op))
            op = ((void*)0);
          else
            created = TRUE;
        }

      if (!op || !created)
        {
          return svn_error_createf(SVN_ERR_ILLEGAL_TARGET, ((void*)0),
                                   _("Can't delete node at '%s'"),
                                   relpath);
        }
    }

  op->kind = OP_DELETE;
  op->children = ((void*)0);
  op->prop_mods = ((void*)0);

  return SVN_NO_ERROR;
}
