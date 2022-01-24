#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_12__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  fulltext_cache; } ;
typedef  TYPE_1__ svn_fs_x__data_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_15__ {int /*<<< orphan*/  digest; int /*<<< orphan*/  kind; } ;
typedef  TYPE_2__ svn_checksum_t ;
typedef  scalar_t__ svn_boolean_t ;
struct TYPE_16__ {scalar_t__ off; scalar_t__ len; int /*<<< orphan*/ * current_fulltext; int /*<<< orphan*/  scratch_pool; int /*<<< orphan*/  fulltext_cache_key; TYPE_12__* fs; int /*<<< orphan*/  md5_checksum_ctx; scalar_t__ checksum_finalized; int /*<<< orphan*/  md5_digest; int /*<<< orphan*/  fulltext_delivered; int /*<<< orphan*/  filehandle_pool; int /*<<< orphan*/  rep; int /*<<< orphan*/  src_state; int /*<<< orphan*/  base_window; int /*<<< orphan*/  rs_list; int /*<<< orphan*/ * fulltext_cache; } ;
typedef  TYPE_3__ rep_read_baton_t ;
typedef  int /*<<< orphan*/  apr_size_t ;
struct TYPE_13__ {TYPE_1__* fsap_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_CORRUPT ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_12__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,TYPE_3__*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  svn_checksum_md5 ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC13(void *baton,
                  char *buf,
                  apr_size_t *len)
{
  rep_read_baton_t *rb = baton;

  /* Get data from the fulltext cache for as long as we can. */
  if (rb->fulltext_cache)
    {
      svn_boolean_t cached;
      FUNC0(FUNC3(&cached, rb, buf, len));
      if (cached)
        return SVN_NO_ERROR;

      /* Cache miss.  From now on, we will never read from the fulltext
       * cache for this representation anymore. */
      rb->fulltext_cache = NULL;
    }

  /* No fulltext cache to help us.  We must read from the window stream. */
  if (!rb->rs_list)
    {
      /* Window stream not initialized, yet.  Do it now. */
      FUNC0(FUNC2(&rb->rs_list, &rb->base_window,
                             &rb->src_state, rb->fs, &rb->rep,
                             rb->filehandle_pool, rb->scratch_pool));

      /* In case we did read from the fulltext cache before, make the
       * window stream catch up.  Also, initialize the fulltext buffer
       * if we want to cache the fulltext at the end. */
      FUNC0(FUNC5(rb, rb->fulltext_delivered));
    }

  /* Get the next block of data.
   * Keep in mind that the representation might be empty and leave us
   * already positioned at the end of the rep. */
  if (rb->off == rb->len)
    *len = 0;
  else
    FUNC0(FUNC4(rb, buf, len));

  if (rb->current_fulltext)
    FUNC12(rb->current_fulltext, buf, *len);

  /* Perform checksumming.  We want to check the checksum as soon as
     the last byte of data is read, in case the caller never performs
     a short read, but we don't want to finalize the MD5 context
     twice. */
  if (!rb->checksum_finalized)
    {
      FUNC0(FUNC10(rb->md5_checksum_ctx, buf, *len));
      rb->off += *len;
      if (rb->off == rb->len)
        {
          svn_checksum_t *md5_checksum;
          svn_checksum_t expected;
          expected.kind = svn_checksum_md5;
          expected.digest = rb->md5_digest;

          rb->checksum_finalized = TRUE;
          FUNC0(FUNC7(&md5_checksum, rb->md5_checksum_ctx,
                                     rb->scratch_pool));
          if (!FUNC8(md5_checksum, &expected))
            return FUNC11(SVN_ERR_FS_CORRUPT,
                    FUNC9(&expected, md5_checksum,
                        rb->scratch_pool,
                        FUNC1("Checksum mismatch while reading representation")),
                    NULL);
        }
    }

  if (rb->off == rb->len && rb->current_fulltext)
    {
      svn_fs_x__data_t *ffd = rb->fs->fsap_data;
      FUNC0(FUNC6(ffd->fulltext_cache, &rb->fulltext_cache_key,
                             rb->current_fulltext, rb->scratch_pool));
      rb->current_fulltext = NULL;
    }

  return SVN_NO_ERROR;
}