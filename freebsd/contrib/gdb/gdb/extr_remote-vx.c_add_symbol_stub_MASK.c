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
struct ldfile {int /*<<< orphan*/  bss_addr; int /*<<< orphan*/  data_addr; int /*<<< orphan*/  txt_addr; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2 (char *arg)
{
  struct ldfile *pLoadFile = (struct ldfile *) arg;

  FUNC0 ("\t%s: ", pLoadFile->name);
  FUNC1 (pLoadFile->name, 0, pLoadFile->txt_addr,
		  pLoadFile->data_addr, pLoadFile->bss_addr);
  FUNC0 ("ok\n");
  return 1;
}