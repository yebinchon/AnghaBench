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
typedef  int /*<<< orphan*/  FORM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int E_INVALID_FIELD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fieldinit ; 
 int /*<<< orphan*/  fieldterm ; 

__attribute__((used)) static int
FUNC2(int (*const fct) (FORM *), FORM *form)
{
  int res;

  if (!FUNC1(form))
    res = E_INVALID_FIELD;
  else
    {
      FUNC0(form, fieldterm);
      res = fct(form);
      FUNC0(form, fieldinit);
    }
  return res;
}