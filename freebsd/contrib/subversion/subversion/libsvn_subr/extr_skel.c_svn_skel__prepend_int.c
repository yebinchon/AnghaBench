
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_skel_t ;
typedef int apr_pool_t ;
typedef int apr_int64_t ;


 int SVN_INT64_BUFFER_SIZE ;
 char* apr_palloc (int *,int ) ;
 int svn__i64toa (char*,int ) ;
 int svn_skel__prepend_str (char*,int *,int *) ;

void svn_skel__prepend_int(apr_int64_t value,
                           svn_skel_t *skel,
                           apr_pool_t *result_pool)
{
  char *val_string = apr_palloc(result_pool, SVN_INT64_BUFFER_SIZE);
  svn__i64toa(val_string, value);

  svn_skel__prepend_str(val_string, skel, result_pool);
}
