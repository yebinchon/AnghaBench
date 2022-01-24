#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ data; } ;
typedef  TYPE_1__ svn_membuf_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int apr_size_t ;
typedef  int /*<<< orphan*/  apr_int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 

svn_error_t *
FUNC3(svn_membuf_t *buffer,
                            const apr_int32_t *ucs4str,
                            apr_size_t length,
                            apr_size_t *result_length)
{
  *result_length = 0;
  while (length-- > 0)
    FUNC0(FUNC1(buffer, *ucs4str++, result_length));
  FUNC2(buffer, *result_length + 1);
  ((char*)buffer->data)[*result_length] = '\0';
  return SVN_NO_ERROR;
}