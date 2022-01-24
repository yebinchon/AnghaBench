#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  scalar_t__ svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_file_t ;
struct TYPE_10__ {int /*<<< orphan*/  nelts; } ;
typedef  TYPE_2__ apr_array_header_t ;

/* Variables and functions */
 int APR_CREATE ; 
 int /*<<< orphan*/  APR_OS_DEFAULT ; 
 int APR_READ ; 
 int APR_WRITE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 char const* FUNC1 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 char const* FUNC4 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC16 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC18(const char *pack_file_dir,
                         const char *pack_filename,
                         const char *shard_path,
                         svn_revnum_t start_rev,
                         svn_revnum_t end_rev,
                         apr_array_header_t *sizes,
                         apr_size_t total_size,
                         int compression_level,
                         svn_boolean_t flush_to_disk,
                         svn_cancel_func_t cancel_func,
                         void *cancel_baton,
                         apr_pool_t *scratch_pool)
{
  svn_stream_t *pack_stream;
  apr_file_t *pack_file;
  svn_revnum_t rev;
  apr_pool_t *iterpool = FUNC10(scratch_pool);

  /* create empty data buffer and a write stream on top of it */
  svn_stringbuf_t *uncompressed
    = FUNC17(total_size, scratch_pool);
  svn_stringbuf_t *compressed
    = FUNC16(scratch_pool);
  pack_stream = FUNC15(uncompressed, scratch_pool);

  /* write the pack file header */
  FUNC0(FUNC2(pack_stream, start_rev, sizes, 0,
                                    sizes->nelts, iterpool));

  /* Some useful paths. */
  FUNC0(FUNC7(&pack_file, FUNC4(pack_file_dir,
                                                       pack_filename,
                                                       scratch_pool),
                           APR_WRITE | APR_CREATE, APR_OS_DEFAULT,
                           scratch_pool));

  /* Iterate over the revisions in this shard, squashing them together. */
  for (rev = start_rev; rev <= end_rev; rev++)
    {
      const char *path;
      svn_stream_t *stream;
      apr_file_t *file;

      FUNC9(iterpool);

      /* Construct the file name. */
      path = FUNC4(shard_path, FUNC1(iterpool, "%ld", rev),
                             iterpool);

      /* Copy all the bits from the non-packed revprop file to the end of
       * the pack file.  Use unbuffered apr_file_t since we're going to
       * write using 16kb chunks. */
      FUNC0(FUNC7(&file, path, APR_READ, APR_OS_DEFAULT,
                               iterpool));
      stream = FUNC14(file, FALSE, iterpool);
      FUNC0(FUNC13(stream, pack_stream,
                               cancel_func, cancel_baton, iterpool));
    }

  /* flush stream buffers to content buffer */
  FUNC0(FUNC12(pack_stream));

  /* compress the content (or just store it for COMPRESSION_LEVEL 0) */
  FUNC0(FUNC3(uncompressed->data, uncompressed->len,
                             compressed, compression_level));

  /* write the pack file content to disk */
  FUNC0(FUNC8(pack_file, compressed->data, compressed->len,
                                 NULL, scratch_pool));
  if (flush_to_disk)
    FUNC0(FUNC6(pack_file, scratch_pool));
  FUNC0(FUNC5(pack_file, scratch_pool));

  FUNC11(iterpool);

  return SVN_NO_ERROR;
}