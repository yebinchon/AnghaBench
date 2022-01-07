
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t kind; } ;
typedef TYPE_1__ svn_checksum_t ;
typedef int apr_pool_t ;


 int SVN_ERR_ASSERT_NO_RETURN (int) ;
 int SVN_VA_NULL ;
 char const* apr_pstrcat (int *,int ,int ,int ) ;
 int * ckind_str ;
 size_t svn_checksum_fnv1a_32x4 ;
 size_t svn_checksum_md5 ;
 int svn_checksum_to_cstring (TYPE_1__ const*,int *) ;

const char *
svn_checksum_serialize(const svn_checksum_t *checksum,
                       apr_pool_t *result_pool,
                       apr_pool_t *scratch_pool)
{
  SVN_ERR_ASSERT_NO_RETURN(checksum->kind >= svn_checksum_md5
                           || checksum->kind <= svn_checksum_fnv1a_32x4);
  return apr_pstrcat(result_pool,
                     ckind_str[checksum->kind],
                     svn_checksum_to_cstring(checksum, scratch_pool),
                     SVN_VA_NULL);
}
