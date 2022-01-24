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
struct TYPE_4__ {char const* data; int blocksize; scalar_t__ len; int /*<<< orphan*/  pool; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
typedef  scalar_t__ apr_size_t ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__) ; 

void
FUNC4(svn_stringbuf_t *str,
                     apr_size_t pos,
                     const char *bytes,
                     apr_size_t count)
{
  /* For COUNT==0, we allow BYTES to be NULL. It's a no-op in that case. */
  if (count == 0)
    return;

  /* special case: BYTES overlaps with this string -> copy the source */
  if (bytes + count > str->data && bytes < str->data + str->blocksize)
    bytes = FUNC0(str->pool, bytes, count);

  if (pos > str->len)
    pos = str->len;

  FUNC3(str, str->len + count);
  FUNC2(str->data + pos + count, str->data + pos, str->len - pos + 1);
  FUNC1(str->data + pos, bytes, count);

  str->len += count;
}