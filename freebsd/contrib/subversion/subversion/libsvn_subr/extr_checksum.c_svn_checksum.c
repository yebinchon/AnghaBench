
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_4__ {scalar_t__ digest; } ;
typedef TYPE_1__ svn_checksum_t ;
typedef int svn_checksum_kind_t ;
typedef int apr_uint32_t ;
typedef scalar_t__ apr_size_t ;
typedef int apr_sha1_ctx_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_BAD_CHECKSUM_KIND ;
 int * SVN_NO_ERROR ;
 int apr_md5 (unsigned char*,void const*,scalar_t__) ;
 int apr_sha1_final (unsigned char*,int *) ;
 int apr_sha1_init (int *) ;
 int apr_sha1_update (int *,void const*,unsigned int) ;
 int htonl (int ) ;
 int svn__fnv1a_32 (void const*,scalar_t__) ;
 int svn__fnv1a_32x4 (void const*,scalar_t__) ;
 TYPE_1__* svn_checksum_create (int,int *) ;




 int * svn_error_create (int ,int *,int *) ;
 int validate_kind (int) ;

svn_error_t *
svn_checksum(svn_checksum_t **checksum,
             svn_checksum_kind_t kind,
             const void *data,
             apr_size_t len,
             apr_pool_t *pool)
{
  apr_sha1_ctx_t sha1_ctx;

  SVN_ERR(validate_kind(kind));
  *checksum = svn_checksum_create(kind, pool);

  switch (kind)
    {
      case 129:
        apr_md5((unsigned char *)(*checksum)->digest, data, len);
        break;

      case 128:
        apr_sha1_init(&sha1_ctx);
        apr_sha1_update(&sha1_ctx, data, (unsigned int)len);
        apr_sha1_final((unsigned char *)(*checksum)->digest, &sha1_ctx);
        break;

      case 131:
        *(apr_uint32_t *)(*checksum)->digest
          = htonl(svn__fnv1a_32(data, len));
        break;

      case 130:
        *(apr_uint32_t *)(*checksum)->digest
          = htonl(svn__fnv1a_32x4(data, len));
        break;

      default:

        return svn_error_create(SVN_ERR_BAD_CHECKSUM_KIND, ((void*)0), ((void*)0));
    }

  return SVN_NO_ERROR;
}
