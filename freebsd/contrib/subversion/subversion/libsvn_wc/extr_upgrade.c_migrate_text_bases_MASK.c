#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {void* md5_checksum; void* sha1_checksum; } ;
struct TYPE_8__ {TYPE_2__ normal_base; TYPE_2__ revert_base; } ;
typedef  TYPE_1__ svn_wc__text_base_info_t ;
typedef  TYPE_2__ svn_wc__text_base_file_info_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
typedef  int /*<<< orphan*/  svn_sqlite__db_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_checksum_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;
struct TYPE_10__ {int /*<<< orphan*/  size; } ;
typedef  TYPE_3__ apr_finfo_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_FINFO_SIZE ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  STMT_INSERT_OR_IGNORE_PRISTINE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_WC__BASE_EXT ; 
 int /*<<< orphan*/  SVN_WC__REVERT_EXT ; 
 int /*<<< orphan*/  TEXT_BASE_SUBDIR ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,int) ; 
 char* FUNC6 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_checksum_md5 ; 
 int /*<<< orphan*/  svn_checksum_sha1 ; 
 int /*<<< orphan*/  FUNC8 (char const*,int /*<<< orphan*/ *) ; 
 char* FUNC9 (char const*,char const*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC10 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char const*,TYPE_1__*) ; 
 int /*<<< orphan*/  svn_io_file_del_none ; 
 int /*<<< orphan*/  FUNC12 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ **,char const*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ **,char const**,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC26 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (char const**,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC29(apr_hash_t **text_bases_info,
                   const char *dir_abspath,
                   const char *new_wcroot_abspath,
                   svn_sqlite__db_t *sdb,
                   apr_pool_t *result_pool,
                   apr_pool_t *scratch_pool)
{
  apr_hash_t *dirents;
  apr_pool_t *iterpool = FUNC16(scratch_pool);
  apr_hash_index_t *hi;
  const char *text_base_dir = FUNC26(dir_abspath,
                                                TEXT_BASE_SUBDIR,
                                                scratch_pool);

  *text_bases_info = FUNC2(result_pool);

  /* Iterate over the text-base files */
  FUNC0(FUNC13(&dirents, text_base_dir, TRUE,
                              scratch_pool, scratch_pool));
  for (hi = FUNC1(scratch_pool, dirents); hi;
       hi = FUNC3(hi))
    {
      const char *text_base_basename = FUNC4(hi);
      svn_checksum_t *md5_checksum;
      svn_checksum_t *sha1_checksum;

      FUNC15(iterpool);

      /* Calculate its checksums and copy it to the pristine store */
      {
        const char *pristine_path;
        const char *text_base_path;
        const char *temp_path;
        svn_sqlite__stmt_t *stmt;
        apr_finfo_t finfo;
        svn_stream_t *read_stream;
        svn_stream_t *result_stream;

        text_base_path = FUNC9(text_base_dir, text_base_basename,
                                         iterpool);

        /* Create a copy and calculate a checksum in one step */
        FUNC0(FUNC25(&result_stream, &temp_path,
                                       new_wcroot_abspath,
                                       svn_io_file_del_none,
                                       iterpool, iterpool));

        FUNC0(FUNC24(&read_stream, text_base_path,
                                           iterpool, iterpool));

        read_stream = FUNC22(read_stream, &md5_checksum,
                                              NULL, svn_checksum_md5,
                                              TRUE, iterpool);

        read_stream = FUNC22(read_stream, &sha1_checksum,
                                              NULL, svn_checksum_sha1,
                                              TRUE, iterpool);

        /* This calculates the hash, creates a copy and closes the stream */
        FUNC0(FUNC23(read_stream, result_stream,
                                 NULL, NULL, iterpool));

        FUNC0(FUNC14(&finfo, text_base_path, APR_FINFO_SIZE, iterpool));

        /* Insert a row into the pristine table. */
        FUNC0(FUNC20(&stmt, sdb,
                                          STMT_INSERT_OR_IGNORE_PRISTINE));
        FUNC0(FUNC18(stmt, 1, sha1_checksum, iterpool));
        FUNC0(FUNC18(stmt, 2, md5_checksum, iterpool));
        FUNC0(FUNC19(stmt, 3, finfo.size));
        FUNC0(FUNC21(NULL, stmt));

        FUNC0(FUNC27(&pristine_path,
                                                    new_wcroot_abspath,
                                                    sha1_checksum,
                                                    iterpool, iterpool));

        /* Ensure any sharding directories exist. */
        FUNC0(FUNC28(FUNC8(pristine_path,
                                                            iterpool),
                                         iterpool));

        /* Now move the file into the pristine store, overwriting
           existing files with the same checksum. */
        FUNC0(FUNC12(temp_path, pristine_path, iterpool));
      }

      /* Add the checksums for this text-base to *TEXT_BASES_INFO. */
      {
        const char *versioned_file_name;
        svn_boolean_t is_revert_base;
        svn_wc__text_base_info_t *info;
        svn_wc__text_base_file_info_t *file_info;

        /* Determine the versioned file name and whether this is a normal base
         * or a revert base. */
        versioned_file_name = FUNC6(text_base_basename,
                                            SVN_WC__REVERT_EXT, result_pool);
        if (versioned_file_name)
          {
            is_revert_base = TRUE;
          }
        else
          {
            versioned_file_name = FUNC6(text_base_basename,
                                                SVN_WC__BASE_EXT, result_pool);
            is_revert_base = FALSE;
          }

        if (! versioned_file_name)
          {
             /* Some file that doesn't end with .svn-base or .svn-revert.
                No idea why that would be in our administrative area, but
                we shouldn't segfault on this case.

                Note that we already copied this file in the pristine store,
                but the next cleanup will take care of that.
              */
            continue;
          }

        /* Create a new info struct for this versioned file, or fill in the
         * existing one if this is the second text-base we've found for it. */
        info = FUNC10(*text_bases_info, versioned_file_name);
        if (info == NULL)
          info = FUNC5(result_pool, sizeof (*info));
        file_info = (is_revert_base ? &info->revert_base : &info->normal_base);

        file_info->sha1_checksum = FUNC7(sha1_checksum, result_pool);
        file_info->md5_checksum = FUNC7(md5_checksum, result_pool);
        FUNC11(*text_bases_info, versioned_file_name, info);
      }
    }

  FUNC17(iterpool);

  return SVN_NO_ERROR;
}