
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; scalar_t__ data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_error_t ;
typedef int svn_checksum_t ;
typedef int apr_uint32_t ;
typedef int apr_pool_t ;
typedef int apr_byte_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_CORRUPT_PACKED_DATA ;
 int * SVN_NO_ERROR ;
 int svn_checksum (int **,int ,scalar_t__,int,int *) ;
 int * svn_checksum__from_digest_fnv1a_32x4 (int const*,int *) ;
 int svn_checksum_fnv1a_32x4 ;
 int svn_checksum_match (int *,int *) ;
 int svn_checksum_mismatch_err (int *,int *,int *,char*) ;
 int * svn_error_create (int ,int *,char*) ;

__attribute__((used)) static svn_error_t *
verify_checksum(svn_stringbuf_t *content,
                apr_pool_t *scratch_pool)
{
  const apr_byte_t *digest;
  svn_checksum_t *actual, *expected;


  if (content->len < sizeof(apr_uint32_t))
    return svn_error_create(SVN_ERR_CORRUPT_PACKED_DATA, ((void*)0),
                            "File too short");

  content->len -= sizeof(apr_uint32_t);
  digest = (apr_byte_t *)content->data + content->len;

  expected = svn_checksum__from_digest_fnv1a_32x4(digest, scratch_pool);
  SVN_ERR(svn_checksum(&actual, svn_checksum_fnv1a_32x4, content->data,
                       content->len, scratch_pool));

  if (!svn_checksum_match(actual, expected))
    SVN_ERR(svn_checksum_mismatch_err(expected, actual, scratch_pool,
                                      "checksum mismatch"));

  return SVN_NO_ERROR;
}
