#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_7__ ;
typedef  struct TYPE_28__   TYPE_6__ ;
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
struct TYPE_23__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ window_cache_key_t ;
struct TYPE_24__ {size_t len; scalar_t__* data; } ;
typedef  TYPE_2__ svn_stringbuf_t ;
struct TYPE_25__ {TYPE_7__* fsap_data; } ;
typedef  TYPE_3__ svn_fs_t ;
struct TYPE_26__ {int /*<<< orphan*/  file; } ;
typedef  TYPE_4__ svn_fs_fs__revision_file_t ;
struct TYPE_27__ {scalar_t__ type; } ;
typedef  TYPE_5__ svn_fs_fs__rep_header_t ;
typedef  int /*<<< orphan*/  svn_fs_fs__p2l_entry_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
struct TYPE_28__ {int /*<<< orphan*/  size; scalar_t__ current; int /*<<< orphan*/  combined_cache; scalar_t__ start; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_6__ rep_state_t ;
struct TYPE_29__ {int /*<<< orphan*/  combined_window_cache; int /*<<< orphan*/  raw_window_cache; int /*<<< orphan*/  txdelta_window_cache; } ;
typedef  TYPE_7__ fs_fs_data_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  scalar_t__ apr_off_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_6__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,TYPE_5__*,TYPE_3__*,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_fs_fs__rep_plain ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC9(svn_fs_fs__rep_header_t *rep_header,
                   svn_fs_t *fs,
                   svn_fs_fs__revision_file_t *rev_file,
                   svn_fs_fs__p2l_entry_t* entry,
                   apr_off_t max_offset,
                   apr_pool_t *result_pool,
                   apr_pool_t *scratch_pool)
{
  fs_fs_data_t *ffd = fs->fsap_data;
  rep_state_t rs = { 0 };
  apr_off_t offset;
  window_cache_key_t key = { 0 };

  if (   (rep_header->type != svn_fs_fs__rep_plain
          && (!ffd->txdelta_window_cache || !ffd->raw_window_cache))
      || (rep_header->type == svn_fs_fs__rep_plain
          && !ffd->combined_window_cache))
    return SVN_NO_ERROR;

  FUNC0(FUNC4(&rs, rep_header, fs, rev_file, entry,
                         result_pool));

  /* RS->FILE may be shared between RS instances -> make sure we point
   * to the right data. */
  offset = rs.start + rs.current;
  if (rep_header->type == svn_fs_fs__rep_plain)
    {
      svn_stringbuf_t *plaintext;
      svn_boolean_t is_cached;

      /* already in cache? */
      FUNC0(FUNC6(&is_cached, rs.combined_cache,
                                 FUNC3(&key, &rs),
                                 scratch_pool));
      if (is_cached)
        return SVN_NO_ERROR;

      /* for larger reps, the header may have crossed a block boundary.
       * make sure we still read blocks properly aligned, i.e. don't use
       * plain seek here. */
      FUNC0(FUNC1(fs, rev_file->file, NULL, offset, scratch_pool));

      plaintext = FUNC8(rs.size, result_pool);
      FUNC0(FUNC7(rev_file->file, plaintext->data,
                                     rs.size, &plaintext->len, NULL,
                                     result_pool));
      plaintext->data[plaintext->len] = 0;
      rs.current += rs.size;

      FUNC0(FUNC5(plaintext, &rs, scratch_pool));
    }
  else
    {
      FUNC0(FUNC2(fs, &rs, max_offset, scratch_pool));
    }

  return SVN_NO_ERROR;
}