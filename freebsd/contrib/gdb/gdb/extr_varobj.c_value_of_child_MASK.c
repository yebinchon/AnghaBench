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
struct varobj {TYPE_2__* root; } ;
struct value {int dummy; } ;
struct TYPE_4__ {TYPE_1__* lang; } ;
struct TYPE_3__ {struct value* (* value_of_child ) (struct varobj*,int) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct value*) ; 
 int /*<<< orphan*/  FUNC1 (struct value*) ; 
 struct value* FUNC2 (struct varobj*,int) ; 

__attribute__((used)) static struct value *
FUNC3 (struct varobj *parent, int index)
{
  struct value *value;

  value = (*parent->root->lang->value_of_child) (parent, index);

  /* If we're being lazy, fetch the real value of the variable. */
  if (value != NULL && FUNC0 (value))
    {
      /* If we fail to fetch the value of the child, return
         NULL so that callers notice that we're leaving an
         error message. */
      if (!FUNC1 (value))
	value = NULL;
    }

  return value;
}