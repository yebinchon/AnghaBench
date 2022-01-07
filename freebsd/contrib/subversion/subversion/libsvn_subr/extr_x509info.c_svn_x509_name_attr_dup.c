
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int utf8_value; int oid_len; int oid; } ;
typedef TYPE_1__ svn_x509_name_attr_t ;
typedef int apr_pool_t ;


 TYPE_1__* apr_palloc (int *,int) ;
 int apr_pmemdup (int *,int ,int ) ;
 int apr_pstrdup (int *,int ) ;

svn_x509_name_attr_t *
svn_x509_name_attr_dup(const svn_x509_name_attr_t *attr,
                       apr_pool_t *result_pool,
                       apr_pool_t *scratch_pool)
{
  svn_x509_name_attr_t *result = apr_palloc(result_pool, sizeof(*result));
  result->oid_len = attr->oid_len;
  result->oid = apr_pmemdup(result_pool, attr->oid, attr->oid_len);
  result->utf8_value = apr_pstrdup(result_pool, attr->utf8_value);

  return result;
}
