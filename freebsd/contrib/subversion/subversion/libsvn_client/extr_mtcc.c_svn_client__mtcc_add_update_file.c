
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_stream_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
struct TYPE_6__ {int pool; int root_op; } ;
typedef TYPE_1__ svn_client__mtcc_t ;
typedef int svn_checksum_t ;
typedef int svn_boolean_t ;
struct TYPE_7__ {scalar_t__ kind; int * base_checksum; int * base_stream; int * src_checksum; int * src_stream; } ;
typedef TYPE_2__ mtcc_op_t ;
typedef int apr_pool_t ;


 int FALSE ;
 scalar_t__ OP_ADD_FILE ;
 scalar_t__ OP_OPEN_FILE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int SVN_ERR_FS_NOT_FILE ;
 int SVN_ERR_ILLEGAL_TARGET ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 int mtcc_op_find (TYPE_2__**,int *,char const*,int ,int ,int ,int ,int ,int *) ;
 int * svn_checksum_dup (int const*,int ) ;
 int svn_client__mtcc_check_path (scalar_t__*,char const*,int ,TYPE_1__*,int *) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 scalar_t__ svn_node_file ;
 scalar_t__ svn_relpath_is_canonical (char const*) ;

svn_error_t *
svn_client__mtcc_add_update_file(const char *relpath,
                                 svn_stream_t *src_stream,
                                 const svn_checksum_t *src_checksum,
                                 svn_stream_t *base_stream,
                                 const svn_checksum_t *base_checksum,
                                 svn_client__mtcc_t *mtcc,
                                 apr_pool_t *scratch_pool)
{
  mtcc_op_t *op;
  svn_boolean_t created;
  svn_node_kind_t kind;
  SVN_ERR_ASSERT(svn_relpath_is_canonical(relpath) && src_stream);

  SVN_ERR(svn_client__mtcc_check_path(&kind, relpath, FALSE,
                                      mtcc, scratch_pool));

  if (kind != svn_node_file)
    return svn_error_createf(SVN_ERR_FS_NOT_FILE, ((void*)0),
                             _("Can't update '%s' because it is not a file"),
                             relpath);

  SVN_ERR(mtcc_op_find(&op, &created, relpath, mtcc->root_op, TRUE, FALSE,
                       TRUE, mtcc->pool, scratch_pool));

  if (!op
      || (op->kind != OP_OPEN_FILE && op->kind != OP_ADD_FILE)
      || (op->src_stream != ((void*)0)))
    {
      return svn_error_createf(SVN_ERR_ILLEGAL_TARGET, ((void*)0),
                               _("Can't update file at '%s'"), relpath);
    }

  op->src_stream = src_stream;
  op->src_checksum = src_checksum ? svn_checksum_dup(src_checksum, mtcc->pool)
                                  : ((void*)0);

  op->base_stream = base_stream;
  op->base_checksum = base_checksum ? svn_checksum_dup(base_checksum,
                                                       mtcc->pool)
                                    : ((void*)0);

  return SVN_NO_ERROR;
}
