#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TypeArgument ;
struct TYPE_8__ {scalar_t__ arg; int /*<<< orphan*/  type; } ;
struct TYPE_7__ {TYPE_2__* current; } ;
typedef  TYPE_1__ FORM ;
typedef  TYPE_2__ FIELD ;

/* Variables and functions */
 int /*<<< orphan*/  E_OK ; 
 int /*<<< orphan*/  E_REQUEST_DENIED ; 
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(FORM *form)
{
  FIELD *field = form->current;

  FUNC2((FUNC3("CR_Previous_Choice(%p)"), (void *)form));
  FUNC1(form);
  FUNC4((FUNC0(form, field->type, field, (TypeArgument *)(field->arg)))
	     ? E_OK
	     : E_REQUEST_DENIED);
}