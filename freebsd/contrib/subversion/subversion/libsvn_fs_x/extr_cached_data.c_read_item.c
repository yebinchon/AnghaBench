
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t len; scalar_t__* data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_stream_t ;
typedef int svn_fs_x__revision_file_t ;
struct TYPE_7__ {size_t size; scalar_t__ fnv1_checksum; size_t offset; } ;
typedef TYPE_2__ svn_fs_x__p2l_entry_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int svn_checksum_t ;
typedef scalar_t__ apr_uint32_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int apr_off_t_toa (int *,size_t) ;
 scalar_t__ htonl (scalar_t__) ;
 scalar_t__ svn__fnv1a_32x4 (scalar_t__*,size_t) ;
 int * svn_checksum__from_digest_fnv1a_32x4 (unsigned char const*,int *) ;
 int * svn_checksum_mismatch_err (int *,int *,int *,int ,int ,int ) ;
 int svn_fs_x__rev_file_read (int *,scalar_t__*,size_t) ;
 int * svn_stream_from_stringbuf (TYPE_1__*,int *) ;
 TYPE_1__* svn_stringbuf_create_ensure (size_t,int *) ;

__attribute__((used)) static svn_error_t *
read_item(svn_stream_t **stream,
          svn_fs_t *fs,
          svn_fs_x__revision_file_t *rev_file,
          svn_fs_x__p2l_entry_t* entry,
          apr_pool_t *result_pool)
{
  apr_uint32_t digest;
  svn_checksum_t *expected, *actual;
  apr_uint32_t plain_digest;
  svn_stringbuf_t *text;


  text = svn_stringbuf_create_ensure(entry->size, result_pool);
  text->len = entry->size;
  text->data[text->len] = 0;
  SVN_ERR(svn_fs_x__rev_file_read(rev_file, text->data, text->len));


  *stream = svn_stream_from_stringbuf(text, result_pool);
  digest = svn__fnv1a_32x4(text->data, text->len);


  if (entry->fnv1_checksum == digest)
    return SVN_NO_ERROR;



  plain_digest = htonl(entry->fnv1_checksum);
  expected = svn_checksum__from_digest_fnv1a_32x4(
                (const unsigned char *)&plain_digest, result_pool);
  plain_digest = htonl(digest);
  actual = svn_checksum__from_digest_fnv1a_32x4(
                (const unsigned char *)&plain_digest, result_pool);


  return svn_checksum_mismatch_err(expected, actual, result_pool,
                 _("Low-level checksum mismatch while reading\n"
                   "%s bytes of meta data at offset %s "),
                 apr_off_t_toa(result_pool, entry->size),
                 apr_off_t_toa(result_pool, entry->offset));
}
