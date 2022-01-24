#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct get_and_increment_txn_key_baton {scalar_t__ txn_number; int /*<<< orphan*/  pool; TYPE_4__* fs; } ;
struct TYPE_6__ {int /*<<< orphan*/  flush_to_disk; } ;
typedef  TYPE_2__ fs_fs_data_t ;
typedef  size_t apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_7__ {TYPE_2__* fsap_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_INT64_BUFFER_SIZE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (char*,scalar_t__) ; 
 char* FUNC3 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__**,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*,size_t,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC6(void *baton, apr_pool_t *pool)
{
  struct get_and_increment_txn_key_baton *cb = baton;
  fs_fs_data_t *ffd = cb->fs->fsap_data;
  const char *txn_current_filename
    = FUNC3(cb->fs, pool);
  char new_id_str[SVN_INT64_BUFFER_SIZE + 1]; /* add space for a newline */
  apr_size_t line_length;

  svn_stringbuf_t *buf;
  FUNC0(FUNC4(&buf, txn_current_filename, cb->pool));

  /* assign the current txn counter value to our result */
  cb->txn_number = FUNC1(NULL, buf->data);

  /* remove trailing newlines */
  line_length = FUNC2(new_id_str, cb->txn_number+1);
  new_id_str[line_length] = '\n';

  /* Increment the key and add a trailing \n to the string so the
     txn-current file has a newline in it. */
  FUNC0(FUNC5(txn_current_filename, new_id_str,
                               line_length + 1,
                               txn_current_filename /* copy_perms path */,
                               ffd->flush_to_disk, pool));

  return SVN_NO_ERROR;
}