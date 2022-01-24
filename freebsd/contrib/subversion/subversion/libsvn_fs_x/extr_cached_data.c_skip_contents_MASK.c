#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ svn_filesize_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_6__ {int /*<<< orphan*/  revision; } ;
struct TYPE_7__ {int /*<<< orphan*/  off; int /*<<< orphan*/  md5_checksum_ctx; int /*<<< orphan*/  scratch_pool; TYPE_3__* current_fulltext; int /*<<< orphan*/  filehandle_pool; int /*<<< orphan*/  len; TYPE_1__ fulltext_cache_key; } ;
typedef  TYPE_2__ rep_read_baton_t ;
typedef  scalar_t__ apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_8__ {scalar_t__ len; char* data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ SVN__STREAM_CHUNK_SIZE ; 
 char* FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_2__*,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC12(rep_read_baton_t *baton,
              svn_filesize_t len)
{
  svn_error_t *err = SVN_NO_ERROR;

  /* Do we want to cache the reconstructed fulltext? */
  if (FUNC3(baton->fulltext_cache_key.revision))
    {
      char *buffer;
      svn_filesize_t to_alloc = FUNC0(len, baton->len);

      /* This should only be happening if BATON->LEN and LEN are
       * cacheable, implying they fit into memory. */
      FUNC2((apr_size_t)to_alloc == to_alloc);

      /* Allocate the fulltext buffer. */
      baton->current_fulltext = FUNC11(
                        FUNC6((apr_size_t)to_alloc),
                        baton->filehandle_pool);

      /* Read LEN bytes from the window stream and store the data
       * in the fulltext buffer (will be filled by further reads later). */
      baton->current_fulltext->len = (apr_size_t)len;
      baton->current_fulltext->data[(apr_size_t)len] = 0;

      buffer = baton->current_fulltext->data;
      while (len > 0 && !err)
        {
          apr_size_t to_read = (apr_size_t)len;
          err = FUNC5(baton, buffer, &to_read);
          len -= to_read;
          buffer += to_read;
        }

      /* Make the MD5 calculation catch up with the data delivered
       * (we did not run MD5 on the data that we took from the cache). */
      if (!err)
        {
          FUNC1(FUNC7(baton->md5_checksum_ctx,
                                      baton->current_fulltext->data,
                                      baton->current_fulltext->len));
          baton->off += baton->current_fulltext->len;
        }
    }
  else if (len > 0)
    {
      /* Simply drain LEN bytes from the window stream. */
      apr_pool_t *subpool = FUNC9(baton->scratch_pool);
      char *buffer = FUNC4(subpool, SVN__STREAM_CHUNK_SIZE);

      while (len > 0 && !err)
        {
          apr_size_t to_read = len > SVN__STREAM_CHUNK_SIZE
                            ? SVN__STREAM_CHUNK_SIZE
                            : (apr_size_t)len;

          err = FUNC5(baton, buffer, &to_read);
          len -= to_read;

          /* Make the MD5 calculation catch up with the data delivered
           * (we did not run MD5 on the data that we took from the cache). */
          if (!err)
            {
              FUNC1(FUNC7(baton->md5_checksum_ctx,
                                          buffer, to_read));
              baton->off += to_read;
            }
        }

      FUNC10(subpool);
    }

  return FUNC8(err);
}