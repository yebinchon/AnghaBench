
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ svn_revnum_t ;
typedef int svn_error_t ;
typedef int svn_client_ctx_t ;
struct TYPE_4__ {scalar_t__ head_revision; scalar_t__ base_revision; int ra_session; int * ctx; int root_op; int * pool; } ;
typedef TYPE_1__ svn_client__mtcc_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_FS_NO_SUCH_REVISION ;
 scalar_t__ SVN_IS_VALID_REVNUM (scalar_t__) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 int mtcc_op_create (int *,int ,int ,int *) ;
 int svn_client_open_ra_session2 (int *,char const*,int *,int *,int *,int *) ;
 int * svn_error_createf (int ,int *,int ,scalar_t__,scalar_t__) ;
 int * svn_pool_create (int *) ;
 int svn_ra_get_latest_revnum (int ,scalar_t__*,int *) ;

svn_error_t *
svn_client__mtcc_create(svn_client__mtcc_t **mtcc,
                        const char *anchor_url,
                        svn_revnum_t base_revision,
                        svn_client_ctx_t *ctx,
                        apr_pool_t *result_pool,
                        apr_pool_t *scratch_pool)
{
  apr_pool_t *mtcc_pool;

  mtcc_pool = svn_pool_create(result_pool);

  *mtcc = apr_pcalloc(mtcc_pool, sizeof(**mtcc));
  (*mtcc)->pool = mtcc_pool;

  (*mtcc)->root_op = mtcc_op_create(((void*)0), FALSE, TRUE, mtcc_pool);

  (*mtcc)->ctx = ctx;

  SVN_ERR(svn_client_open_ra_session2(&(*mtcc)->ra_session, anchor_url,
                                      ((void*)0) , ctx,
                                      mtcc_pool, scratch_pool));

  SVN_ERR(svn_ra_get_latest_revnum((*mtcc)->ra_session, &(*mtcc)->head_revision,
                                   scratch_pool));

  if (SVN_IS_VALID_REVNUM(base_revision))
    (*mtcc)->base_revision = base_revision;
  else
    (*mtcc)->base_revision = (*mtcc)->head_revision;

  if ((*mtcc)->base_revision > (*mtcc)->head_revision)
    return svn_error_createf(SVN_ERR_FS_NO_SUCH_REVISION, ((void*)0),
                             _("No such revision %ld (HEAD is %ld)"),
                             base_revision, (*mtcc)->head_revision);

  return SVN_NO_ERROR;
}
