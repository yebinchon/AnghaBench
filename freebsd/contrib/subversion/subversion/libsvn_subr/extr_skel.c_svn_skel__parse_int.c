
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; int data; } ;
typedef TYPE_1__ svn_skel_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_int64_t ;


 char* apr_pstrmemdup (int *,int ,int ) ;
 int svn_cstring_atoi64 (int *,char const*) ;
 int * svn_error_trace (int ) ;

svn_error_t *
svn_skel__parse_int(apr_int64_t *n, const svn_skel_t *skel,
                    apr_pool_t *scratch_pool)
{
  const char *str;



  str = apr_pstrmemdup(scratch_pool, skel->data, skel->len);
  return svn_error_trace(svn_cstring_atoi64(n, str));
}
