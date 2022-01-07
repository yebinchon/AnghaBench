
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_status_t ;
typedef int apr_pool_t ;
struct TYPE_3__ {scalar_t__ size; } ;
typedef TYPE_1__ apr_finfo_t ;


 int APR_FINFO_MIN ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int apr_stat (TYPE_1__*,char const*,int ,int *) ;
 int cstring_from_utf8 (char const**,char const*,int *) ;

svn_error_t *
svn_io_filesizes_three_different_p(svn_boolean_t *different_p12,
                                   svn_boolean_t *different_p23,
                                   svn_boolean_t *different_p13,
                                   const char *file1,
                                   const char *file2,
                                   const char *file3,
                                   apr_pool_t *scratch_pool)
{
  apr_finfo_t finfo1, finfo2, finfo3;
  apr_status_t status1, status2, status3;
  const char *file1_apr, *file2_apr, *file3_apr;




  SVN_ERR(cstring_from_utf8(&file1_apr, file1, scratch_pool));
  SVN_ERR(cstring_from_utf8(&file2_apr, file2, scratch_pool));
  SVN_ERR(cstring_from_utf8(&file3_apr, file3, scratch_pool));


  status1 = apr_stat(&finfo1, file1_apr, APR_FINFO_MIN, scratch_pool);
  status2 = apr_stat(&finfo2, file2_apr, APR_FINFO_MIN, scratch_pool);
  status3 = apr_stat(&finfo3, file3_apr, APR_FINFO_MIN, scratch_pool);





  *different_p12 = !status1 && !status2 && finfo1.size != finfo2.size;
  *different_p23 = !status2 && !status3 && finfo2.size != finfo3.size;
  *different_p13 = !status1 && !status3 && finfo1.size != finfo3.size;

  return SVN_NO_ERROR;
}
