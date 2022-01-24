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
typedef  int /*<<< orphan*/  outs ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  int /*<<< orphan*/ * LPVOID ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (unsigned int) ; 

__attribute__((used)) static LPVOID
FUNC2 (unsigned int len)
{
  static int outn = -1;
  static LPWSTR outs[4] = {NULL, NULL, NULL, NULL};

  if (++outn >= (sizeof (outs) / sizeof (outs[0])))
    outn = 0;

  /* Allocate space for the converted string, reusing any previously allocated
     space, if applicable. */
  if (outs[outn])
    FUNC0 (outs[outn]);
  outs[outn] = (LPWSTR) FUNC1 (len);

  return outs[outn];
}