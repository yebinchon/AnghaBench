#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int apr_uint64_t ;
typedef  int apr_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_CORRUPT_PACKED_DATA ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int*) ; 

__attribute__((used)) static svn_error_t *
FUNC4(svn_stream_t *stream, apr_uint64_t *result)
{
  apr_uint64_t shift = 0;
  apr_uint64_t value = 0;
  unsigned char c;

  do
    {
      apr_size_t len = 1;
      FUNC0(FUNC3(stream, (char *)&c, &len));
      if (len != 1)
        return FUNC2(SVN_ERR_CORRUPT_PACKED_DATA, NULL,
                                FUNC1("Unexpected end of stream"));

      value += (apr_uint64_t)(c & 0x7f) << shift;
      shift += 7;
      if (shift > 64)
        return FUNC2(SVN_ERR_CORRUPT_PACKED_DATA, NULL,
                                FUNC1("Integer representation too long"));
    }
  while (c >= 0x80);

  *result = value;
  return SVN_NO_ERROR;
}