
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int svn_stream_t ;
typedef int svn_error_t ;
struct TYPE_8__ {int pool; TYPE_2__* root_op; } ;
typedef TYPE_1__ svn_client__mtcc_t ;
typedef int svn_checksum_t ;
typedef int svn_boolean_t ;
struct TYPE_9__ {int * src_checksum; int * src_stream; int kind; } ;
typedef TYPE_2__ mtcc_op_t ;
typedef int apr_pool_t ;


 int FALSE ;
 scalar_t__ MTCC_UNMODIFIED (TYPE_1__*) ;
 int OP_ADD_FILE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int SVN_ERR_ILLEGAL_TARGET ;
 int * SVN_NO_ERROR ;
 scalar_t__ SVN_PATH_IS_EMPTY (char const*) ;
 int TRUE ;
 int _ (char*) ;
 int mtcc_op_find (TYPE_2__**,int *,char const*,TYPE_2__*,int ,int ,int ,int ,int *) ;
 int mtcc_verify_create (TYPE_1__*,char const*,int *) ;
 int * svn_checksum_dup (int const*,int ) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 scalar_t__ svn_relpath_is_canonical (char const*) ;

svn_error_t *
svn_client__mtcc_add_add_file(const char *relpath,
                              svn_stream_t *src_stream,
                              const svn_checksum_t *src_checksum,
                              svn_client__mtcc_t *mtcc,
                              apr_pool_t *scratch_pool)
{
  mtcc_op_t *op;
  svn_boolean_t created;
  SVN_ERR_ASSERT(svn_relpath_is_canonical(relpath) && src_stream);

  SVN_ERR(mtcc_verify_create(mtcc, relpath, scratch_pool));

  if (SVN_PATH_IS_EMPTY(relpath) && MTCC_UNMODIFIED(mtcc))
    {

      op = mtcc->root_op;
    }
  else
    {
      SVN_ERR(mtcc_op_find(&op, &created, relpath, mtcc->root_op, FALSE, FALSE,
                           TRUE, mtcc->pool, scratch_pool));

      if (!op || !created)
        {
          return svn_error_createf(SVN_ERR_ILLEGAL_TARGET, ((void*)0),
                                   _("Can't add file at '%s'"),
                                   relpath);
        }
    }

  op->kind = OP_ADD_FILE;
  op->src_stream = src_stream;
  op->src_checksum = src_checksum ? svn_checksum_dup(src_checksum, mtcc->pool)
                                  : ((void*)0);

  return SVN_NO_ERROR;
}
