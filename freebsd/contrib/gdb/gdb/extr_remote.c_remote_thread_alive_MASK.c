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
typedef  int /*<<< orphan*/  ptid_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 

__attribute__((used)) static int
FUNC4 (ptid_t ptid)
{
  int tid = FUNC0 (ptid);
  char buf[16];

  if (tid < 0)
    FUNC3 (buf, "T-%08x", -tid);
  else
    FUNC3 (buf, "T%08x", tid);
  FUNC2 (buf);
  FUNC1 (buf, sizeof (buf), 0);
  return (buf[0] == 'O' && buf[1] == 'K');
}