#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_35__   TYPE_9__ ;
typedef  struct TYPE_34__   TYPE_6__ ;
typedef  struct TYPE_33__   TYPE_5__ ;
typedef  struct TYPE_32__   TYPE_4__ ;
typedef  struct TYPE_31__   TYPE_3__ ;
typedef  struct TYPE_30__   TYPE_2__ ;
typedef  struct TYPE_29__   TYPE_1__ ;

/* Type definitions */
struct TYPE_29__ {scalar_t__ count; int eol; scalar_t__ end_offset; int /*<<< orphan*/ ** changes; scalar_t__ start_offset; } ;
typedef  TYPE_1__ svn_fs_fs__changes_list_t ;
struct TYPE_30__ {int eol; int /*<<< orphan*/  revision; TYPE_6__* fs; TYPE_9__* revision_file; scalar_t__ next_offset; int /*<<< orphan*/  next; int /*<<< orphan*/  rev_file_pool; } ;
typedef  TYPE_2__ svn_fs_fs__changes_context_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
struct TYPE_31__ {int /*<<< orphan*/  second; int /*<<< orphan*/  revision; } ;
typedef  TYPE_3__ pair_cache_key_t ;
struct TYPE_32__ {scalar_t__ changes_cache; } ;
typedef  TYPE_4__ fs_fs_data_t ;
typedef  int /*<<< orphan*/  change_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  scalar_t__ apr_off_t ;
struct TYPE_33__ {scalar_t__ nelts; char* elts; scalar_t__ nalloc; } ;
typedef  TYPE_5__ apr_array_header_t ;
struct TYPE_35__ {int /*<<< orphan*/  file; int /*<<< orphan*/  stream; } ;
struct TYPE_34__ {TYPE_4__* fsap_data; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SVN_FS_FS__CHANGES_BLOCK_SIZE ; 
 scalar_t__ SVN_FS_FS__ITEM_INDEX_CHANGES ; 
 int /*<<< orphan*/  SVN_FS_FS__ITEM_TYPE_CHANGES ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_6__*,int /*<<< orphan*/ ,scalar_t__,TYPE_9__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,int /*<<< orphan*/ ,scalar_t__,TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__*,TYPE_9__*,TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (void**,scalar_t__*,scalar_t__,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,TYPE_3__*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__*,TYPE_6__*,TYPE_9__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_9__**,TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__**,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (TYPE_6__*) ; 

svn_error_t *
FUNC17(apr_array_header_t **changes,
                       svn_fs_fs__changes_context_t *context,
                       apr_pool_t *result_pool,
                       apr_pool_t *scratch_pool)
{
  apr_off_t item_index = SVN_FS_FS__ITEM_INDEX_CHANGES;
  svn_boolean_t found;
  fs_fs_data_t *ffd = context->fs->fsap_data;
  svn_fs_fs__changes_list_t *changes_list;

  pair_cache_key_t key;
  key.revision = context->revision;
  key.second = context->next;

  /* try cache lookup first */

  if (ffd->changes_cache)
    {
      FUNC0(FUNC7((void **)&changes_list, &found,
                             ffd->changes_cache, &key, result_pool));
    }
  else
    {
      found = FALSE;
    }

  if (!found)
    {
      /* read changes from revision file */

      if (!context->revision_file)
        {
          FUNC0(FUNC10(context->revision,
                                                    context->fs,
                                                    scratch_pool));
          FUNC0(FUNC12(&context->revision_file,
                                                   context->fs,
                                                   context->revision,
                                                   context->rev_file_pool,
                                                   scratch_pool));
        }

      if (FUNC16(context->fs))
        {
          /* 'block-read' will probably populate the cache with the data
           * that we want.  However, we won't want to force it to process
           * very large change lists as part of this prefetching mechanism.
           * Those would be better handled by the iterative code below. */
          FUNC0(FUNC4(NULL, context->fs,
                             context->revision, SVN_FS_FS__ITEM_INDEX_CHANGES,
                             context->revision_file, scratch_pool,
                             scratch_pool));

          /* This may succeed now ... */
          FUNC0(FUNC7((void **)&changes_list, &found,
                                 ffd->changes_cache, &key, result_pool));
        }

      /* If we still have no data, read it here. */
      if (!found)
        {
          apr_off_t changes_offset;

          /* Addressing is very different for old formats
           * (needs to read the revision trailer). */
          if (FUNC14(context->fs))
            {
              FUNC0(FUNC11(&changes_offset, context->fs,
                                             context->revision_file,
                                             context->revision, NULL,
                                             SVN_FS_FS__ITEM_INDEX_CHANGES,
                                             scratch_pool));
            }
          else
            {
              FUNC0(FUNC6(NULL, &changes_offset,
                                              context->revision_file,
                                              context->fs, context->revision,
                                              scratch_pool));

              /* This variable will be used for debug logging only. */
              item_index = changes_offset;
            }

          /* Actual reading and parsing are the same, though. */
          FUNC0(FUNC1(context->fs, context->revision_file->file,
                               NULL, changes_offset + context->next_offset,
                               scratch_pool));

          FUNC0(FUNC13(changes,
                                          context->revision_file->stream,
                                          SVN_FS_FS__CHANGES_BLOCK_SIZE,
                                          result_pool, scratch_pool));

          /* Construct the info object for the entries block we just read. */
          changes_list = FUNC3(scratch_pool, sizeof(*changes_list));
          FUNC0(FUNC15(&changes_list->end_offset,
                                         context->revision_file->file,
                                         scratch_pool));
          changes_list->end_offset -= changes_offset;
          changes_list->start_offset = context->next_offset;
          changes_list->count = (*changes)->nelts;
          changes_list->changes = (change_t **)(*changes)->elts;
          changes_list->eol = changes_list->count < SVN_FS_FS__CHANGES_BLOCK_SIZE;

          /* cache for future reference */

          if (ffd->changes_cache)
            FUNC0(FUNC8(ffd->changes_cache, &key, changes_list,
                                   scratch_pool));
        }
    }

  if (found)
    {
      /* Return the block as a "proper" APR array. */
      (*changes) = FUNC2(result_pool, 0, sizeof(void *));
      (*changes)->elts = (char *)changes_list->changes;
      (*changes)->nelts = changes_list->count;
      (*changes)->nalloc = changes_list->count;
    }

  /* Where to look next - if there is more data. */
  context->next += (*changes)->nelts;
  context->next_offset = changes_list->end_offset;
  context->eol = changes_list->eol;

  /* Close the revision file after we read all data. */
  if (context->eol && context->revision_file)
    {
      FUNC0(FUNC9(context->revision_file));
      context->revision_file = NULL;
    }

  FUNC0(FUNC5(context->fs, context->revision, item_index, *changes,
                         SVN_FS_FS__ITEM_TYPE_CHANGES, scratch_pool));

  return SVN_NO_ERROR;
}