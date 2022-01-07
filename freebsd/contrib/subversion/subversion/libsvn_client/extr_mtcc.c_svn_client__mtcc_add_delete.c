
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_client__mtcc_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int mtcc_add_delete (char const*,int ,int *,int *) ;
 int * svn_error_trace (int ) ;

svn_error_t *
svn_client__mtcc_add_delete(const char *relpath,
                            svn_client__mtcc_t *mtcc,
                            apr_pool_t *scratch_pool)
{
  return svn_error_trace(mtcc_add_delete(relpath, FALSE, mtcc, scratch_pool));
}
