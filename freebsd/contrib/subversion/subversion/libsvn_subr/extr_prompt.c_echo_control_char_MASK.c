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
typedef  int /*<<< orphan*/  apr_file_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char) ; 
 scalar_t__ FUNC2 (char) ; 

__attribute__((used)) static void
FUNC3(char ch, apr_file_t *outfd)
{
  if (FUNC1(ch))
    {
      const char substitute = (ch < 32? '@' + ch : '?');
      FUNC0('^', outfd);
      FUNC0(substitute, outfd);
    }
  else if (FUNC2(ch))
    {
      /* Pass printable characters unchanged. */
      FUNC0(ch, outfd);
    }
  else
    {
      /* Everything else is strange. */
      FUNC0('^', outfd);
      FUNC0('!', outfd);
    }
}