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
typedef  int apr_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC2(apr_size_t *size,
              apr_size_t *byte_counter,
              svn_stream_t *stream)
{
  unsigned char c;

  *size = 0;
  while (1)
    {
      FUNC0(FUNC1(&c, stream));
      ++*byte_counter;
      *size = (*size << 7) | (c & 0x7f);
      if (!(c & 0x80))
        break;
    }
  return SVN_NO_ERROR;
}