#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_fs_x__revision_file_t ;
struct TYPE_6__ {int size; } ;
typedef  TYPE_1__ svn_fs_x__p2l_entry_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_7__ {scalar_t__ digest; } ;
typedef  TYPE_2__ svn_checksum_t ;
typedef  int /*<<< orphan*/  svn_checksum_ctx_t ;
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  apr_uint32_t ;
typedef  int apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int apr_off_t ;

/* Variables and functions */
 int STREAM_THRESHOLD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_checksum_fnv1a_32x4 ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned char*,int) ; 

__attribute__((used)) static svn_error_t *
FUNC7(svn_fs_x__revision_file_t *file,
                           svn_fs_x__p2l_entry_t *entry,
                           apr_pool_t *scratch_pool)
{
  unsigned char buffer[STREAM_THRESHOLD];
  svn_checksum_t *checksum;
  svn_checksum_ctx_t *context
    = FUNC3(svn_checksum_fnv1a_32x4, scratch_pool);
  apr_off_t size = entry->size;

  while (size > 0)
    {
      apr_size_t to_read = size > sizeof(buffer)
                         ? sizeof(buffer)
                         : (apr_size_t)size;
      FUNC0(FUNC6(file, buffer, to_read));
      FUNC0(FUNC5(context, buffer, to_read));
      size -= to_read;
    }

  FUNC0(FUNC4(&checksum, context, scratch_pool));
  FUNC0(FUNC1(file, entry,
                            FUNC2(*(const apr_uint32_t *)checksum->digest),
                            scratch_pool));

  return SVN_NO_ERROR;
}