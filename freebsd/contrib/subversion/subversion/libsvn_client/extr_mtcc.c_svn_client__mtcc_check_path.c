
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
struct TYPE_8__ {int ra_session; int pool; TYPE_5__* root_op; int base_revision; } ;
typedef TYPE_1__ svn_client__mtcc_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_9__ {scalar_t__ kind; void* performed_stat; } ;
typedef TYPE_2__ mtcc_op_t ;
typedef int apr_pool_t ;
struct TYPE_10__ {int * children; scalar_t__ kind; void* performed_stat; } ;


 int FALSE ;
 scalar_t__ MTCC_UNMODIFIED (TYPE_1__*) ;
 scalar_t__ OP_ADD_DIR ;
 scalar_t__ OP_ADD_FILE ;
 scalar_t__ OP_OPEN_DIR ;
 scalar_t__ OP_OPEN_FILE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int SVN_ERR_FS_NOT_DIRECTORY ;
 int SVN_ERR_FS_NOT_FILE ;
 int SVN_ERR_FS_NOT_FOUND ;
 int SVN_ERR_MALFUNCTION () ;
 int * SVN_NO_ERROR ;
 scalar_t__ SVN_PATH_IS_EMPTY (char const*) ;
 void* TRUE ;
 int _ (char*) ;
 int mtcc_get_origin (char const**,int *,char const*,void*,TYPE_1__*,int *,int *) ;
 int mtcc_op_find (TYPE_2__**,int *,char const*,TYPE_5__*,void*,int ,int ,int ,int *) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_file ;
 scalar_t__ svn_node_none ;
 int svn_ra_check_path (int ,char const*,int ,scalar_t__*,int *) ;
 int svn_relpath_is_canonical (char const*) ;

svn_error_t *
svn_client__mtcc_check_path(svn_node_kind_t *kind,
                            const char *relpath,
                            svn_boolean_t check_repository,
                            svn_client__mtcc_t *mtcc,
                            apr_pool_t *scratch_pool)
{
  const char *origin_relpath;
  svn_revnum_t origin_rev;
  mtcc_op_t *op;

  SVN_ERR_ASSERT(svn_relpath_is_canonical(relpath));

  if (SVN_PATH_IS_EMPTY(relpath) && MTCC_UNMODIFIED(mtcc)
      && !mtcc->root_op->performed_stat)
    {

      SVN_ERR(svn_ra_check_path(mtcc->ra_session, "", mtcc->base_revision,
                                kind, scratch_pool));

      mtcc->root_op->performed_stat = TRUE;
      if (*kind == svn_node_file)
        {
          mtcc->root_op->kind = OP_OPEN_FILE;
          mtcc->root_op->children = ((void*)0);
        }
      return SVN_NO_ERROR;
    }

  SVN_ERR(mtcc_op_find(&op, ((void*)0), relpath, mtcc->root_op, TRUE, FALSE,
                       FALSE, mtcc->pool, scratch_pool));

  if (!op || (check_repository && !op->performed_stat))
    {
      SVN_ERR(mtcc_get_origin(&origin_relpath, &origin_rev,
                              relpath, TRUE, mtcc,
                              scratch_pool, scratch_pool));

      if (!origin_relpath)
        *kind = svn_node_none;
      else
        SVN_ERR(svn_ra_check_path(mtcc->ra_session, origin_relpath,
                                  origin_rev, kind, scratch_pool));

      if (op && *kind == svn_node_dir)
        {
          if (op->kind == OP_OPEN_DIR || op->kind == OP_ADD_DIR)
            op->performed_stat = TRUE;
          else if (op->kind == OP_OPEN_FILE || op->kind == OP_ADD_FILE)
            return svn_error_createf(SVN_ERR_FS_NOT_FILE, ((void*)0),
                                     _("Can't perform file operation "
                                       "on '%s' as it is not a file"),
                                     relpath);
        }
      else if (op && *kind == svn_node_file)
        {
          if (op->kind == OP_OPEN_FILE || op->kind == OP_ADD_FILE)
            op->performed_stat = TRUE;
          else if (op->kind == OP_OPEN_DIR || op->kind == OP_ADD_DIR)
            return svn_error_createf(SVN_ERR_FS_NOT_DIRECTORY, ((void*)0),
                                     _("Can't perform directory operation "
                                       "on '%s' as it is not a directory"),
                                     relpath);
        }
      else if (op && (op->kind == OP_OPEN_DIR || op->kind == OP_OPEN_FILE))
        {
          return svn_error_createf(SVN_ERR_FS_NOT_FOUND, ((void*)0),
                                   _("Can't open '%s' as it does not exist"),
                                   relpath);
        }

      return SVN_NO_ERROR;
    }


  if (op->kind == OP_OPEN_DIR || op->kind == OP_ADD_DIR)
    {
      *kind = svn_node_dir;
      return SVN_NO_ERROR;
    }
  else if (op->kind == OP_OPEN_FILE || op->kind == OP_ADD_FILE)
    {
      *kind = svn_node_file;
      return SVN_NO_ERROR;
    }
  SVN_ERR_MALFUNCTION();
}
