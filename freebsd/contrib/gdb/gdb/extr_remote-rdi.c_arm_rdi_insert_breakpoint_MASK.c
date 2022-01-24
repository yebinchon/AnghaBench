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
struct local_bp_list_entry {struct local_bp_list_entry* next; int /*<<< orphan*/  point; int /*<<< orphan*/  addr; } ;
typedef  int /*<<< orphan*/  PointHandle ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int RDIError_NoError ; 
 int RDIPoint_16Bit ; 
 int RDIPoint_EQ ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct local_bp_list_entry* local_bp_list ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int
FUNC6 (CORE_ADDR addr, char *contents_cache)
{
  int rslt;
  PointHandle point;
  struct local_bp_list_entry *entry;
  int type = RDIPoint_EQ;

  if (FUNC1 (addr) || FUNC2 (addr))
    type |= RDIPoint_16Bit;
  rslt = FUNC0 (addr, type, 0, &point);
  if (rslt != RDIError_NoError)
    {
      FUNC3 ("RDI_setbreak: %s\n", FUNC4 (rslt));
    }
  entry =
    (struct local_bp_list_entry *) FUNC5 (sizeof (struct local_bp_list_entry));
  entry->addr = addr;
  entry->point = point;
  entry->next = local_bp_list;
  local_bp_list = entry;
  return rslt;
}