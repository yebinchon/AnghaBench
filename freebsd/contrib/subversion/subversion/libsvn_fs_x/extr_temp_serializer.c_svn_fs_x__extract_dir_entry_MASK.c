#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int out_of_date; scalar_t__ txn_filesize; int hint; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ svn_fs_x__ede_baton_t ;
struct TYPE_11__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ svn_fs_x__dirent_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
struct TYPE_12__ {scalar_t__ txn_filesize; int count; int /*<<< orphan*/  lengths; int /*<<< orphan*/  entries; } ;
typedef  TYPE_3__ dir_data_t ;
typedef  size_t apr_uint32_t ;
typedef  size_t apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ TRUE ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,TYPE_2__ const*,size_t) ; 
 size_t FUNC1 (TYPE_2__**,int /*<<< orphan*/ ,int,scalar_t__*) ; 
 scalar_t__ FUNC2 (TYPE_2__ const* const*,int /*<<< orphan*/ ,int) ; 
 void* FUNC3 (TYPE_2__ const* const*,void const* const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,void**) ; 

svn_error_t *
FUNC5(void **out,
                            const void *data,
                            apr_size_t data_len,
                            void *baton,
                            apr_pool_t *pool)
{
  const dir_data_t *dir_data = data;
  svn_fs_x__ede_baton_t *b = baton;
  svn_boolean_t found;
  apr_size_t pos;

  /* resolve the reference to the entries array */
  const svn_fs_x__dirent_t * const *entries =
    FUNC3(data, (const void *const *)&dir_data->entries);

  /* resolve the reference to the lengths array */
  const apr_uint32_t *lengths =
    FUNC3(data, (const void *const *)&dir_data->lengths);

  /* Before we return, make sure we tell the caller this data is even still
     relevant. */
  b->out_of_date = dir_data->txn_filesize != b->txn_filesize;

  /* Special case: Early out for empty directories.
     That simplifies tests further down the road. */
  *out = NULL;
  if (dir_data->count == 0)
    return SVN_NO_ERROR;

  /* HINT _might_ be the position we hit last time.
     If within valid range, check whether HINT+1 is a hit. */
  if (   b->hint < dir_data->count - 1
      && FUNC2(entries, b->name, b->hint + 1))
    {
      /* Got lucky. */
      pos = b->hint + 1;
      found = TRUE;
    }
  else
    {
      /* Binary search for the desired entry by name. */
      pos = FUNC1((svn_fs_x__dirent_t **)entries, b->name,
                       dir_data->count, &found);
    }

  /* Remember the hit index - if we FOUND the entry. */
  if (found)
    b->hint = pos;

  /* de-serialize that entry or return NULL, if no match has been found.
   * Be sure to check that the directory contents is still up-to-date. */
  if (found && !b->out_of_date)
    {
      const svn_fs_x__dirent_t *source =
          FUNC3(entries, (const void *const *)&entries[pos]);

      /* Entries have been serialized one-by-one, each time including all
       * nested structures and strings. Therefore, they occupy a single
       * block of memory whose end-offset is either the beginning of the
       * next entry or the end of the buffer
       */
      apr_size_t size = lengths[pos];

      /* copy & deserialize the entry */
      svn_fs_x__dirent_t *new_entry = FUNC0(pool, source, size);

      FUNC4(new_entry, (void **)&new_entry->name);
      *(svn_fs_x__dirent_t **)out = new_entry;
    }

  return SVN_NO_ERROR;
}