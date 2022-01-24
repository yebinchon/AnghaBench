#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_temp_serializer__context_t ;
typedef  int /*<<< orphan*/  svn_fs_dirent_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
struct TYPE_5__ {int /*<<< orphan*/ * new_entry; int /*<<< orphan*/  name; int /*<<< orphan*/  txn_filesize; } ;
typedef  TYPE_1__ replace_baton_t ;
typedef  int /*<<< orphan*/  lengths ;
typedef  int /*<<< orphan*/  entries ;
struct TYPE_6__ {int operations; int count; scalar_t__ over_provision; int /*<<< orphan*/  lengths; int /*<<< orphan*/  len; int /*<<< orphan*/  entries; int /*<<< orphan*/  txn_filesize; } ;
typedef  TYPE_2__ dir_data_t ;
typedef  int /*<<< orphan*/ * apr_uint32_t ;
typedef  size_t apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 size_t FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void**,size_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC5 (void**,size_t*,void*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (TYPE_2__*,void const* const*) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_2__*,int /*<<< orphan*/ **,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC8(void **data,
                             apr_size_t *data_len,
                             void *baton,
                             apr_pool_t *pool)
{
  replace_baton_t *replace_baton = (replace_baton_t *)baton;
  dir_data_t *dir_data = (dir_data_t *)*data;
  svn_boolean_t found;
  svn_fs_dirent_t **entries;
  apr_uint32_t *lengths;
  apr_uint32_t length;
  apr_size_t pos;

  svn_temp_serializer__context_t *context;

  /* update the cached file length info.
   * Because we are writing to the cache, it is fair to assume that the
   * caller made sure that the current contents is consistent with the
   * previous state of the directory file. */
  dir_data->txn_filesize = replace_baton->txn_filesize;

  /* after quite a number of operations, let's re-pack everything.
   * This is to limit the number of wasted space as we cannot overwrite
   * existing data but must always append. */
  if (dir_data->operations > 2 + dir_data->count / 4)
    return FUNC5(data, data_len, baton, pool);

  /* resolve the reference to the entries array */
  entries = (svn_fs_dirent_t **)
    FUNC6(dir_data,
                               (const void *const *)&dir_data->entries);

  /* resolve the reference to the lengths array */
  lengths = (apr_uint32_t *)
    FUNC6(dir_data,
                               (const void *const *)&dir_data->lengths);

  /* binary search for the desired entry by name */
  pos = FUNC1(entries, replace_baton->name, dir_data->count, &found);

  /* handle entry removal (if found at all) */
  if (replace_baton->new_entry == NULL)
    {
      if (found)
        {
          /* remove reference to the entry from the index */
          FUNC2(&entries[pos],
                  &entries[pos + 1],
                  sizeof(entries[pos]) * (dir_data->count - pos));
          FUNC2(&lengths[pos],
                  &lengths[pos + 1],
                  sizeof(lengths[pos]) * (dir_data->count - pos));

          dir_data->count--;
          dir_data->over_provision++;
          dir_data->operations++;
        }

      return SVN_NO_ERROR;
    }

  /* if not found, prepare to insert the new entry */
  if (!found)
    {
      /* fallback to slow operation if there is no place left to insert an
       * new entry to index. That will automatically give add some spare
       * entries ("overprovision"). */
      if (dir_data->over_provision == 0)
        return FUNC5(data, data_len, baton, pool);

      /* make entries[index] available for pointing to the new entry */
      FUNC2(&entries[pos + 1],
              &entries[pos],
              sizeof(entries[pos]) * (dir_data->count - pos));
      FUNC2(&lengths[pos + 1],
              &lengths[pos],
              sizeof(lengths[pos]) * (dir_data->count - pos));

      dir_data->count++;
      dir_data->over_provision--;
      dir_data->operations++;
    }

  /* de-serialize the new entry */
  entries[pos] = replace_baton->new_entry;
  context = FUNC7(dir_data,
                                             entries,
                                             dir_data->len,
                                             *data_len,
                                             pool);
  FUNC4(context, &entries[pos], &length);

  /* return the updated serialized data */
  FUNC0(FUNC3(context, data, data_len, TRUE));

  /* since the previous call may have re-allocated the buffer, the lengths
   * pointer may no longer point to the entry in that buffer. Therefore,
   * re-map it again and store the length value after that. */

  dir_data = (dir_data_t *)*data;
  lengths = (apr_uint32_t *)
    FUNC6(dir_data,
                               (const void *const *)&dir_data->lengths);
  lengths[pos] = length;

  return SVN_NO_ERROR;
}