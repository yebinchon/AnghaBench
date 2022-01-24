#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct type {int dummy; } ;
struct field_info {TYPE_1__* fnlist; } ;
struct TYPE_2__ {int /*<<< orphan*/  fn_fieldlist; struct TYPE_2__* next; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct type*) ; 
 int FUNC1 (struct type*) ; 

__attribute__((used)) static int
FUNC2 (struct field_info *fip, struct type *type)
{
  int n;

  for (n = FUNC1 (type);
       fip->fnlist != NULL;
       fip->fnlist = fip->fnlist->next)
    {
      --n;			/* Circumvent Sun3 compiler bug */
      FUNC0 (type)[n] = fip->fnlist->fn_fieldlist;
    }
  return 1;
}