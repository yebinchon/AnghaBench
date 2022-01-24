#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {char* data; } ;
typedef  TYPE_2__ svn_stringbuf_t ;
typedef  void* svn_filesize_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_11__ {int /*<<< orphan*/  digest; } ;
typedef  TYPE_3__ svn_checksum_t ;
struct TYPE_9__ {int /*<<< orphan*/  number; int /*<<< orphan*/  noderev_txn_id; } ;
struct TYPE_12__ {scalar_t__ revision; TYPE_1__ uniquifier; int /*<<< orphan*/  sha1_digest; int /*<<< orphan*/  has_sha1; int /*<<< orphan*/  md5_digest; void* expanded_size; void* size; scalar_t__ item_index; int /*<<< orphan*/  txn_id; } ;
typedef  TYPE_4__ representation_t ;
typedef  scalar_t__ apr_uint64_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  scalar_t__ apr_int64_t ;

/* Variables and functions */
 int APR_MD5_DIGESTSIZE ; 
 int APR_SHA1_DIGESTSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_CORRUPT ; 
 scalar_t__ SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,char const**) ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char const**,char*) ; 
 int /*<<< orphan*/  svn_checksum_md5 ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__**,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_checksum_sha1 ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*,char*) ; 
 char* FUNC9 (char*,char**) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC13(representation_t **rep_p,
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

  rep = FUNC2(result_pool, sizeof(*rep));
  *rep_p = rep;

  FUNC0(FUNC4(&rep->revision, (const char **)&string));

  /* initialize transaction info (never stored) */
  FUNC12(&rep->txn_id);

  /* while in transactions, it is legal to simply write "-1" */
  str = FUNC9(" ", &string);
  if (str == NULL)
    {
      if (rep->revision == SVN_INVALID_REVNUM)
        return SVN_NO_ERROR;

      return FUNC10(SVN_ERR_FS_CORRUPT, NULL,
                              FUNC1("Malformed text representation offset line in node-rev"));
    }

  FUNC0(FUNC8(&val, str));
  rep->item_index = (apr_uint64_t)val;

  str = FUNC9(" ", &string);
  if (str == NULL)
    return FUNC10(SVN_ERR_FS_CORRUPT, NULL,
                            FUNC1("Malformed text representation offset line in node-rev"));

  FUNC0(FUNC8(&val, str));
  rep->size = (svn_filesize_t)val;

  str = FUNC9(" ", &string);
  if (str == NULL)
    return FUNC10(SVN_ERR_FS_CORRUPT, NULL,
                            FUNC1("Malformed text representation offset line in node-rev"));

  FUNC0(FUNC8(&val, str));
  rep->expanded_size = (svn_filesize_t)val;

  /* Read in the MD5 hash. */
  str = FUNC9(" ", &string);
  if ((str == NULL) || (FUNC5(str) != (APR_MD5_DIGESTSIZE * 2)))
    return FUNC10(SVN_ERR_FS_CORRUPT, NULL,
                            FUNC1("Malformed text representation offset line in node-rev"));

  FUNC0(FUNC7(&checksum, svn_checksum_md5, str,
                                 scratch_pool));

  /* If STR is a all-zero checksum, CHECKSUM will be NULL and REP already
     contains the correct value. */
  if (checksum)
    FUNC3(rep->md5_digest, checksum->digest, sizeof(rep->md5_digest));

  /* The remaining fields are only used for formats >= 4, so check that. */
  str = FUNC9(" ", &string);
  if (str == NULL)
    return SVN_NO_ERROR;

  /* Is the SHA1 hash present? */
  if (str[0] == '-' && str[1] == 0)
    {
      checksum = NULL;
    }
  else
    {
      /* Read the SHA1 hash. */
      if (FUNC5(str) != (APR_SHA1_DIGESTSIZE * 2))
        return FUNC10(SVN_ERR_FS_CORRUPT, NULL,
                                FUNC1("Malformed text representation offset line in node-rev"));

      FUNC0(FUNC7(&checksum, svn_checksum_sha1, str,
                                     scratch_pool));
    }

  /* We do have a valid SHA1 but it might be all 0.
     We cannot be sure where that came from (Alas! legacy), so let's not
     claim we know the SHA1 in that case. */
  rep->has_sha1 = checksum != NULL;

  /* If STR is a all-zero checksum, CHECKSUM will be NULL and REP already
     contains the correct value. */
  if (checksum)
    FUNC3(rep->sha1_digest, checksum->digest, sizeof(rep->sha1_digest));

  str = FUNC9(" ", &string);
  if (str == NULL)
    return FUNC10(SVN_ERR_FS_CORRUPT, NULL,
                            FUNC1("Malformed text representation offset line in node-rev"));

  /* Is the uniquifier present? */
  if (str[0] == '-' && str[1] == 0)
    {
      end = string;
    }
  else
    {
      char *substring = str;

      /* Read the uniquifier. */
      str = FUNC9("/", &substring);
      if (str == NULL)
        return FUNC10(SVN_ERR_FS_CORRUPT, NULL,
                                FUNC1("Malformed text representation offset line in node-rev"));

      FUNC0(FUNC11(&rep->uniquifier.noderev_txn_id, str));

      str = FUNC9(" ", &substring);
      if (str == NULL || *str != '_')
        return FUNC10(SVN_ERR_FS_CORRUPT, NULL,
                                FUNC1("Malformed text representation offset line in node-rev"));

      ++str;
      rep->uniquifier.number = FUNC6(&end, str);
    }

  if (*end)
    return FUNC10(SVN_ERR_FS_CORRUPT, NULL,
                            FUNC1("Malformed text representation offset line in node-rev"));

  return SVN_NO_ERROR;
}