
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct TYPE_6__ {int base_revision; } ;
typedef TYPE_1__ svn_client__mtcc_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int mtcc_add_delete (char const*,int ,TYPE_1__*,int *) ;
 int mtcc_get_origin (char const**,int *,char const*,int ,TYPE_1__*,int *,int *) ;
 int svn_client__mtcc_add_copy (char const*,int ,char const*,TYPE_1__*,int *) ;

svn_error_t *
svn_client__mtcc_add_move(const char *src_relpath,
                          const char *dst_relpath,
                          svn_client__mtcc_t *mtcc,
                          apr_pool_t *scratch_pool)
{
  const char *origin_relpath;
  svn_revnum_t origin_rev;

  SVN_ERR(mtcc_get_origin(&origin_relpath, &origin_rev,
                          src_relpath, FALSE, mtcc,
                          scratch_pool, scratch_pool));

  SVN_ERR(svn_client__mtcc_add_copy(src_relpath, mtcc->base_revision,
                                    dst_relpath, mtcc, scratch_pool));
  SVN_ERR(mtcc_add_delete(src_relpath, TRUE, mtcc, scratch_pool));

  return SVN_NO_ERROR;
}
