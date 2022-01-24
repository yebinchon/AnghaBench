#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int size; scalar_t__ data; } ;
typedef  TYPE_1__ svn_membuf_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int apr_size_t ;
typedef  scalar_t__ apr_int32_t ;
typedef  int /*<<< orphan*/  apr_byte_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_ERR_UTF8PROC_ERROR ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int FUNC3 (scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC4(svn_membuf_t *buffer, apr_int32_t ucs4chr, apr_size_t *length)
{
  apr_size_t utf8len;

  if (buffer->size - *length < 4)
    FUNC2(buffer, buffer->size + 4);

  utf8len = FUNC3(ucs4chr, ((apr_byte_t*)buffer->data + *length));
  if (!utf8len)
    return FUNC1(SVN_ERR_UTF8PROC_ERROR, NULL,
                             FUNC0("Invalid Unicode character U+%04lX"),
                             (long)ucs4chr);
  *length += utf8len;
  return SVN_NO_ERROR;
}