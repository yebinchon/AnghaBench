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
typedef  int /*<<< orphan*/  apr_int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char**,int) ; 

__attribute__((used)) static apr_int64_t FUNC1(const char *status_line)
{
  /* STATUS_LINE should be of form: "HTTP/1.1 200 OK" */
  if (status_line[0] == 'H' &&
      status_line[1] == 'T' &&
      status_line[2] == 'T' &&
      status_line[3] == 'P' &&
      status_line[4] == '/' &&
      (status_line[5] >= '0' && status_line[5] <= '9') &&
      status_line[6] == '.' &&
      (status_line[7] >= '0' && status_line[7] <= '9') &&
      status_line[8] == ' ')
    {
      char *reason;

      return FUNC0(status_line + 8, &reason, 10);
    }
  return 0;
}