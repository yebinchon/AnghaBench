
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void* ascii_cert; void* issuer_dname; void* valid_until; void* valid_from; void* fingerprint; void* hostname; } ;
typedef TYPE_1__ svn_auth_ssl_server_cert_info_t ;
typedef int apr_pool_t ;


 TYPE_1__* apr_palloc (int *,int) ;
 void* apr_pstrdup (int *,void*) ;

svn_auth_ssl_server_cert_info_t *
svn_auth_ssl_server_cert_info_dup
  (const svn_auth_ssl_server_cert_info_t *info, apr_pool_t *pool)
{
  svn_auth_ssl_server_cert_info_t *new_info
    = apr_palloc(pool, sizeof(*new_info));

  *new_info = *info;

  new_info->hostname = apr_pstrdup(pool, new_info->hostname);
  new_info->fingerprint = apr_pstrdup(pool, new_info->fingerprint);
  new_info->valid_from = apr_pstrdup(pool, new_info->valid_from);
  new_info->valid_until = apr_pstrdup(pool, new_info->valid_until);
  new_info->issuer_dname = apr_pstrdup(pool, new_info->issuer_dname);
  new_info->ascii_cert = apr_pstrdup(pool, new_info->ascii_cert);

  return new_info;
}
