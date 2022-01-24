#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int* data; int len; } ;
typedef  TYPE_1__ svn_string_t ;
struct TYPE_9__ {int* data; } ;
typedef  TYPE_2__ svn_membuf_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int svn_boolean_t ;
typedef  int /*<<< orphan*/  endiancheck ;
typedef  int apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int apr_int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int SVN_UTF__UNKNOWN_LENGTH ; 
 int FUNC1 (int const) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int,int const) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int const*,int,int*) ; 

svn_error_t *
FUNC6(const svn_string_t **result,
                       const apr_int32_t *utf32str,
                       apr_size_t utf32len,
                       svn_boolean_t big_endian,
                       apr_pool_t *result_pool,
                       apr_pool_t *scratch_pool)
{
  static const apr_int32_t endiancheck = 0xa5cbbc5a;
  const svn_boolean_t arch_big_endian =
    (((const char*)&endiancheck)[sizeof(endiancheck) - 1] == '\x5a');
  const svn_boolean_t swap_order = (!big_endian != !arch_big_endian);

  apr_size_t length;
  svn_membuf_t resultbuf;
  svn_string_t *res;

  if (utf32len == SVN_UTF__UNKNOWN_LENGTH)
    {
      const apr_int32_t *endp = utf32str;
      while (*endp++)
        ;
      utf32len = (endp - utf32str);
    }

  if (swap_order)
    {
      apr_size_t offset;
      svn_membuf_t ucs4buf;

      FUNC4(&ucs4buf, utf32len * sizeof(apr_int32_t),
                         scratch_pool);

      for (offset = 0; offset < utf32len; ++offset)
        {
          const apr_int32_t code = FUNC1(utf32str[offset]);
          FUNC3(&ucs4buf, offset, code);
        }
      utf32str = ucs4buf.data;
    }

  /* Convert the UCS-4 buffer to UTF-8, assuming an average of 2 bytes
     per code point for encoding. The buffer will grow as
     necessary. */
  FUNC4(&resultbuf, utf32len * 2, result_pool);
  FUNC0(FUNC5(
              &resultbuf, utf32str, utf32len, &length));

  res = FUNC2(result_pool, sizeof(*res));
  res->data = resultbuf.data;
  res->len = length;
  *result = res;
  return SVN_NO_ERROR;
}