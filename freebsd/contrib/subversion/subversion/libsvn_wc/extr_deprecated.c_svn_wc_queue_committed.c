
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_committed_queue_t ;
typedef int svn_wc_adm_access_t ;
typedef int svn_error_t ;
typedef int svn_checksum_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int * svn_checksum__from_digest_md5 (unsigned char const*,int ) ;
 int svn_wc__get_committed_queue_pool (int *) ;
 int * svn_wc_queue_committed2 (int *,char const*,int *,int ,int const*,int ,int ,int const*,int *) ;

svn_error_t *
svn_wc_queue_committed(svn_wc_committed_queue_t **queue,
                       const char *path,
                       svn_wc_adm_access_t *adm_access,
                       svn_boolean_t recurse,
                       const apr_array_header_t *wcprop_changes,
                       svn_boolean_t remove_lock,
                       svn_boolean_t remove_changelist,
                       const unsigned char *digest,
                       apr_pool_t *pool)
{
  const svn_checksum_t *md5_checksum;

  if (digest)
    md5_checksum = svn_checksum__from_digest_md5(
                     digest, svn_wc__get_committed_queue_pool(*queue));
  else
    md5_checksum = ((void*)0);

  return svn_wc_queue_committed2(*queue, path, adm_access, recurse,
                                 wcprop_changes, remove_lock,
                                 remove_changelist, md5_checksum, pool);
}
