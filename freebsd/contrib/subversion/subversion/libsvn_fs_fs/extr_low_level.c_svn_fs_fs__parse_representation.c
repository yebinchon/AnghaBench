
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {char* data; } ;
typedef TYPE_2__ svn_stringbuf_t ;
typedef void* svn_filesize_t ;
typedef int svn_error_t ;
struct TYPE_11__ {int digest; } ;
typedef TYPE_3__ svn_checksum_t ;
struct TYPE_9__ {int number; int noderev_txn_id; } ;
struct TYPE_12__ {scalar_t__ revision; TYPE_1__ uniquifier; int sha1_digest; int has_sha1; int md5_digest; void* expanded_size; void* size; scalar_t__ item_index; int txn_id; } ;
typedef TYPE_4__ representation_t ;
typedef scalar_t__ apr_uint64_t ;
typedef int apr_pool_t ;
typedef scalar_t__ apr_int64_t ;


 int APR_MD5_DIGESTSIZE ;
 int APR_SHA1_DIGESTSIZE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_FS_CORRUPT ;
 scalar_t__ SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 TYPE_4__* apr_pcalloc (int *,int) ;
 int memcpy (int ,int ,int) ;
 int parse_revnum (scalar_t__*,char const**) ;
 int strlen (char*) ;
 int svn__base36toui64 (char const**,char*) ;
 int svn_checksum_md5 ;
 int svn_checksum_parse_hex (TYPE_3__**,int ,char*,int *) ;
 int svn_checksum_sha1 ;
 int svn_cstring_atoi64 (scalar_t__*,char*) ;
 char* svn_cstring_tokenize (char*,char**) ;
 int * svn_error_create (int ,int *,int ) ;
 int svn_fs_fs__id_txn_parse (int *,char*) ;
 int svn_fs_fs__id_txn_reset (int *) ;

svn_error_t *
svn_fs_fs__parse_representation(representation_t **rep_p,
                                svn_stringbuf_t *text,
                                apr_pool_t *result_pool,
                                apr_pool_t *scratch_pool)
{
  representation_t *rep;
  char *str;
  apr_int64_t val;
  char *string = text->data;
  svn_checksum_t *checksum;
  const char *end;

  rep = apr_pcalloc(result_pool, sizeof(*rep));
  *rep_p = rep;

  SVN_ERR(parse_revnum(&rep->revision, (const char **)&string));


  svn_fs_fs__id_txn_reset(&rep->txn_id);


  str = svn_cstring_tokenize(" ", &string);
  if (str == ((void*)0))
    {
      if (rep->revision == SVN_INVALID_REVNUM)
        return SVN_NO_ERROR;

      return svn_error_create(SVN_ERR_FS_CORRUPT, ((void*)0),
                              _("Malformed text representation offset line in node-rev"));
    }

  SVN_ERR(svn_cstring_atoi64(&val, str));
  rep->item_index = (apr_uint64_t)val;

  str = svn_cstring_tokenize(" ", &string);
  if (str == ((void*)0))
    return svn_error_create(SVN_ERR_FS_CORRUPT, ((void*)0),
                            _("Malformed text representation offset line in node-rev"));

  SVN_ERR(svn_cstring_atoi64(&val, str));
  rep->size = (svn_filesize_t)val;

  str = svn_cstring_tokenize(" ", &string);
  if (str == ((void*)0))
    return svn_error_create(SVN_ERR_FS_CORRUPT, ((void*)0),
                            _("Malformed text representation offset line in node-rev"));

  SVN_ERR(svn_cstring_atoi64(&val, str));
  rep->expanded_size = (svn_filesize_t)val;


  str = svn_cstring_tokenize(" ", &string);
  if ((str == ((void*)0)) || (strlen(str) != (APR_MD5_DIGESTSIZE * 2)))
    return svn_error_create(SVN_ERR_FS_CORRUPT, ((void*)0),
                            _("Malformed text representation offset line in node-rev"));

  SVN_ERR(svn_checksum_parse_hex(&checksum, svn_checksum_md5, str,
                                 scratch_pool));



  if (checksum)
    memcpy(rep->md5_digest, checksum->digest, sizeof(rep->md5_digest));


  str = svn_cstring_tokenize(" ", &string);
  if (str == ((void*)0))
    return SVN_NO_ERROR;


  if (str[0] == '-' && str[1] == 0)
    {
      checksum = ((void*)0);
    }
  else
    {

      if (strlen(str) != (APR_SHA1_DIGESTSIZE * 2))
        return svn_error_create(SVN_ERR_FS_CORRUPT, ((void*)0),
                                _("Malformed text representation offset line in node-rev"));

      SVN_ERR(svn_checksum_parse_hex(&checksum, svn_checksum_sha1, str,
                                     scratch_pool));
    }




  rep->has_sha1 = checksum != ((void*)0);



  if (checksum)
    memcpy(rep->sha1_digest, checksum->digest, sizeof(rep->sha1_digest));

  str = svn_cstring_tokenize(" ", &string);
  if (str == ((void*)0))
    return svn_error_create(SVN_ERR_FS_CORRUPT, ((void*)0),
                            _("Malformed text representation offset line in node-rev"));


  if (str[0] == '-' && str[1] == 0)
    {
      end = string;
    }
  else
    {
      char *substring = str;


      str = svn_cstring_tokenize("/", &substring);
      if (str == ((void*)0))
        return svn_error_create(SVN_ERR_FS_CORRUPT, ((void*)0),
                                _("Malformed text representation offset line in node-rev"));

      SVN_ERR(svn_fs_fs__id_txn_parse(&rep->uniquifier.noderev_txn_id, str));

      str = svn_cstring_tokenize(" ", &substring);
      if (str == ((void*)0) || *str != '_')
        return svn_error_create(SVN_ERR_FS_CORRUPT, ((void*)0),
                                _("Malformed text representation offset line in node-rev"));

      ++str;
      rep->uniquifier.number = svn__base36toui64(&end, str);
    }

  if (*end)
    return svn_error_create(SVN_ERR_FS_CORRUPT, ((void*)0),
                            _("Malformed text representation offset line in node-rev"));

  return SVN_NO_ERROR;
}
