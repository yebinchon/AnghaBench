#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_16__ ;

/* Type definitions */
struct TYPE_18__ {scalar_t__ type; scalar_t__ base_item_index; int /*<<< orphan*/  base_revision; int /*<<< orphan*/  header_size; } ;
typedef  TYPE_1__ svn_fs_fs__rep_header_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_19__ {int /*<<< orphan*/  representations; TYPE_16__* rev_file; scalar_t__ offset; } ;
typedef  TYPE_2__ revision_info_t ;
struct TYPE_20__ {scalar_t__ item_index; int /*<<< orphan*/  size; int /*<<< orphan*/  expanded_size; int /*<<< orphan*/  revision; } ;
typedef  TYPE_3__ representation_t ;
struct TYPE_21__ {int chain_length; int /*<<< orphan*/  header_size; int /*<<< orphan*/  size; scalar_t__ item_index; int /*<<< orphan*/  expanded_size; int /*<<< orphan*/  revision; } ;
typedef  TYPE_4__ rep_stats_t ;
struct TYPE_22__ {int /*<<< orphan*/  fs; } ;
typedef  TYPE_5__ query_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  scalar_t__ apr_off_t ;
typedef  int /*<<< orphan*/  apr_byte_t ;
struct TYPE_17__ {int /*<<< orphan*/  stream; int /*<<< orphan*/  file; } ;

/* Variables and functions */
 int /*<<< orphan*/  APR_SET ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_16__*) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ *,int) ; 
 TYPE_4__* FUNC4 (int*,TYPE_5__*,TYPE_2__**,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_fs_fs__rep_delta ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_4__**,int) ; 

__attribute__((used)) static svn_error_t *
FUNC9(rep_stats_t **representation,
                     query_t *query,
                     representation_t *rep,
                     revision_info_t *revision_info,
                     apr_pool_t *result_pool,
                     apr_pool_t *scratch_pool)
{
  rep_stats_t *result;
  int idx;

  /* read location (revision, offset) and size */

  /* look it up */
  result = FUNC4(&idx, query, &revision_info, rep->revision,
                               rep->item_index);
  if (!result)
    {
      /* not parsed, yet (probably a rep in the same revision).
       * Create a new rep object and determine its base rep as well.
       */
      result = FUNC3(result_pool, sizeof(*result));
      result->revision = rep->revision;
      result->expanded_size = rep->expanded_size;
      result->item_index = rep->item_index;
      result->size = rep->size;

      /* In phys. addressing mode, follow link to the actual representation.
       * In log. addressing mode, we will find it already as part of our
       * linear walk through the whole file. */
      if (!FUNC6(query->fs))
        {
          svn_fs_fs__rep_header_t *header;
          apr_off_t offset = revision_info->offset
                           + (apr_off_t)rep->item_index;

          FUNC2(revision_info->rev_file);
          FUNC1(FUNC7(revision_info->rev_file->file, APR_SET,
                                   &offset, scratch_pool));
          FUNC1(FUNC5(&header,
                                             revision_info->rev_file->stream,
                                             scratch_pool, scratch_pool));

          result->header_size = header->header_size;

          /* Determine length of the delta chain. */
          if (header->type == svn_fs_fs__rep_delta)
            {
              int base_idx;
              rep_stats_t *base_rep
                = FUNC4(&base_idx, query, NULL,
                                      header->base_revision,
                                      header->base_item_index);

              result->chain_length = 1 + FUNC0(base_rep->chain_length,
                                             (apr_byte_t)0xfe);
            }
          else
            {
              result->chain_length = 1;
            }
        }

      FUNC8(revision_info->representations, &result, idx);
    }

  *representation = result;

  return SVN_NO_ERROR;
}