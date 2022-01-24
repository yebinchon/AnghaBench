#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_temp_serializer__context_t ;
struct TYPE_3__ {int /*<<< orphan*/  len; void* data; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_fs_x__noderev_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ SVN_TEMP_SERIALIZER__OVERHEAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC3(void **buffer,
                                  apr_size_t *buffer_size,
                                  void *item,
                                  apr_pool_t *pool)
{
  svn_stringbuf_t *serialized;
  svn_fs_x__noderev_t *noderev = item;

  /* create an (empty) serialization context with plenty of (initial)
   * buffer space. */
  svn_temp_serializer__context_t *context =
      FUNC2(NULL, 0,
                                1024 - SVN_TEMP_SERIALIZER__OVERHEAD,
                                pool);

  /* serialize the noderev */
  FUNC0(context, &noderev);

  /* return serialized data */
  serialized = FUNC1(context);
  *buffer = serialized->data;
  *buffer_size = serialized->len;

  return SVN_NO_ERROR;
}