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
typedef  int /*<<< orphan*/  value ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  buffer ;
typedef  int apr_uint64_t ;
typedef  int apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_file_t ;
typedef  scalar_t__ apr_byte_t ;

/* Variables and functions */
 int CHAR_BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__*,int,int*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC3(apr_file_t *proto_index,
                            apr_uint64_t value,
                            apr_pool_t *scratch_pool)
{
  apr_byte_t buffer[sizeof(value)];
  int i;
  apr_size_t written;

  /* Split VALUE into 8 bytes using LE ordering. */
  for (i = 0; i < sizeof(buffer); ++i)
    {
      /* Unsigned conversions are well-defined ... */
      buffer[i] = (apr_byte_t)value;
      value >>= CHAR_BIT;
    }

  /* Write it all to disk. */
  FUNC0(FUNC2(proto_index, buffer, sizeof(buffer),
                                 &written, scratch_pool));
  FUNC1(written == sizeof(buffer));

  return SVN_NO_ERROR;
}