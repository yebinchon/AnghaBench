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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 char* FUNC1 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC2 (char *buf)
{
  if (*buf++ != 'E')
    return;			/* not an error msg */
  switch (*buf)
    {
    case '1':			/* malformed packet error */
      if (*++buf == '0')	/*   general case: */
	FUNC0 ("tracepoint.c: error in outgoing packet.");
      else
	FUNC0 ("tracepoint.c: error in outgoing packet at field #%ld.",
	       FUNC1 (buf, NULL, 16));
    case '2':
      FUNC0 ("trace API error 0x%s.", ++buf);
    default:
      FUNC0 ("Target returns error code '%s'.", buf);
    }
}