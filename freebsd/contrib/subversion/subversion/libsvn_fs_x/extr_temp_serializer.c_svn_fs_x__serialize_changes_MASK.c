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
struct TYPE_5__ {int /*<<< orphan*/  len; void* data; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
struct TYPE_6__ {int count; int /*<<< orphan*/ * changes; } ;
typedef  TYPE_2__ svn_fs_x__changes_list_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_2__*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void const* const*,int) ; 

svn_error_t *
FUNC5(void **data,
                            apr_size_t *data_len,
                            void *in,
                            apr_pool_t *pool)
{
  svn_fs_x__changes_list_t *changes = in;
  svn_temp_serializer__context_t *context;
  svn_stringbuf_t *serialized;
  int i;

  /* serialize it and all its elements */
  context = FUNC2(changes,
                                      sizeof(*changes),
                                      changes->count * 250,
                                      pool);

  FUNC4(context,
                            (const void * const *)&changes->changes,
                            changes->count * sizeof(*changes->changes));

  for (i = 0; i < changes->count; ++i)
    FUNC0(context, &changes->changes[i]);

  FUNC3(context);

  /* return the serialized result */
  serialized = FUNC1(context);

  *data = serialized->data;
  *data_len = serialized->len;

  return SVN_NO_ERROR;
}