#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  table; int /*<<< orphan*/  tree; } ;
struct rar {TYPE_2__ lengthcode; TYPE_2__ lowoffsetcode; TYPE_2__ offsetcode; TYPE_2__ maincode; } ;
struct archive_read {TYPE_1__* format; } ;
struct TYPE_3__ {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct archive_read *a)
{
  struct rar *rar = (struct rar *)(a->format->data);
  FUNC0(rar->maincode.tree);
  FUNC0(rar->offsetcode.tree);
  FUNC0(rar->lowoffsetcode.tree);
  FUNC0(rar->lengthcode.tree);
  FUNC0(rar->maincode.table);
  FUNC0(rar->offsetcode.table);
  FUNC0(rar->lowoffsetcode.table);
  FUNC0(rar->lengthcode.table);
  FUNC1(&rar->maincode, 0, sizeof(rar->maincode));
  FUNC1(&rar->offsetcode, 0, sizeof(rar->offsetcode));
  FUNC1(&rar->lowoffsetcode, 0, sizeof(rar->lowoffsetcode));
  FUNC1(&rar->lengthcode, 0, sizeof(rar->lengthcode));
}