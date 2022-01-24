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
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int baud_rate ; 
 scalar_t__ FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 

void
FUNC7 (char *proto, char *args)
{
  int n;
  char *p, *q;

  /* if no args, then nothing to do. */
  if (args == NULL || *args == '\0')
    return;

  /* scan off white space.  */
  for (p = args; FUNC1 (*p); ++p);;

  /* find end of device name.  */
  for (q = p; *q != '\0' && !FUNC1 (*q); ++q);;

  /* check for missing or empty device name.  */
  FUNC0 (p, q);
  FUNC4 (FUNC2 (p, q - p));

  /* look for baud rate.  */
  n = FUNC5 (q, &p, 10);

  /* check for missing or empty baud rate.  */
  FUNC0 (p, q);
  baud_rate = n;

  /* look for debug value.  */
  n = FUNC5 (p, &q, 10);

  /* check for missing or empty debug value.  */
  FUNC0 (p, q);
  FUNC3 (n);

  /* scan off remaining white space.  */
  for (p = q; FUNC1 (*p); ++p);;

  /* if not end of string, then there's unrecognized junk. */
  if (*p != '\0')
    FUNC6 (proto, p);

  return;
}