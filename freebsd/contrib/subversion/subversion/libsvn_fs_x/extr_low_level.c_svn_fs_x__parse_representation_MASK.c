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
struct TYPE_9__ {int change_set; scalar_t__ number; } ;
struct TYPE_11__ {int /*<<< orphan*/  sha1_digest; int /*<<< orphan*/  has_sha1; int /*<<< orphan*/  md5_digest; void* expanded_size; void* size; TYPE_1__ id; } ;
typedef  TYPE_3__ svn_fs_x__representation_t ;
typedef  void* svn_filesize_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_12__ {int /*<<< orphan*/  digest; } ;
typedef  TYPE_4__ svn_checksum_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  scalar_t__ apr_off_t ;
typedef  int apr_int64_t ;

/* Variables and functions */
 int APR_MD5_DIGESTSIZE ; 
 int APR_SHA1_DIGESTSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_CORRUPT ; 
 int SVN_FS_X__INVALID_CHANGE_SET ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  svn_checksum_md5 ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__**,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_checksum_sha1 ; 
 int /*<<< orphan*/  FUNC6 (int*,char*) ; 
 char* FUNC7 (char*,char**) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

svn_error_t *
FUNC9(svn_fs_x__representation_t **rep_p,
                               svn_stringbuf_t *text,
                               apr_pool_t *result_pool,
                               apr_pool_t *scratch_pool)
{
  svn_fs_x__representation_t *rep;
  char *str;
  apr_int64_t val;
  char *string = text->data;
  svn_checksum_t *checksum;

  rep = FUNC2(result_pool, sizeof(*rep));
  *rep_p = rep;

  str = FUNC7(" ", &string);
  if (str == NULL)
    return FUNC8(SVN_ERR_FS_CORRUPT, NULL,
                            FUNC1("Malformed text representation offset line in node-rev"));

  FUNC0(FUNC6(&rep->id.change_set, str));

  /* while in transactions, it is legal to simply write "-1" */
  if (rep->id.change_set == -1)
    return SVN_NO_ERROR;

  str = FUNC7(" ", &string);
  if (str == NULL)
    {
      if (rep->id.change_set == SVN_FS_X__INVALID_CHANGE_SET)
        return SVN_NO_ERROR;

      return FUNC8(SVN_ERR_FS_CORRUPT, NULL,
                              FUNC1("Malformed text representation offset line in node-rev"));
    }

  FUNC0(FUNC6(&val, str));
  rep->id.number = (apr_off_t)val;

  str = FUNC7(" ", &string);
  if (str == NULL)
    return FUNC8(SVN_ERR_FS_CORRUPT, NULL,
                            FUNC1("Malformed text representation offset line in node-rev"));

  FUNC0(FUNC6(&val, str));
  rep->size = (svn_filesize_t)val;

  str = FUNC7(" ", &string);
  if (str == NULL)
    return FUNC8(SVN_ERR_FS_CORRUPT, NULL,
                            FUNC1("Malformed text representation offset line in node-rev"));

  FUNC0(FUNC6(&val, str));
  rep->expanded_size = (svn_filesize_t)val;

  /* Read in the MD5 hash. */
  str = FUNC7(" ", &string);
  if ((str == NULL) || (FUNC4(str) != (APR_MD5_DIGESTSIZE * 2)))
    return FUNC8(SVN_ERR_FS_CORRUPT, NULL,
                            FUNC1("Malformed text representation offset line in node-rev"));

  FUNC0(FUNC5(&checksum, svn_checksum_md5, str,
                                 scratch_pool));
  if (checksum)
    FUNC3(rep->md5_digest, checksum->digest, sizeof(rep->md5_digest));

  /* The remaining fields are only used for formats >= 4, so check that. */
  str = FUNC7(" ", &string);
  if (str == NULL)
    return SVN_NO_ERROR;

  /* Read the SHA1 hash. */
  if (FUNC4(str) != (APR_SHA1_DIGESTSIZE * 2))
    return FUNC8(SVN_ERR_FS_CORRUPT, NULL,
                            FUNC1("Malformed text representation offset line in node-rev"));

  FUNC0(FUNC5(&checksum, svn_checksum_sha1, str,
                                 scratch_pool));
  rep->has_sha1 = checksum != NULL;
  if (checksum)
    FUNC3(rep->sha1_digest, checksum->digest, sizeof(rep->sha1_digest));

  return SVN_NO_ERROR;
}