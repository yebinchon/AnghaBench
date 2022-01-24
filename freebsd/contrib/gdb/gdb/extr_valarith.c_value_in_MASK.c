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
struct value {int dummy; } ;
struct type {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LA_BOOL_TYPE ; 
 scalar_t__ FUNC0 (struct type*) ; 
 scalar_t__ TYPE_CODE_BOOL ; 
 scalar_t__ TYPE_CODE_CHAR ; 
 scalar_t__ TYPE_CODE_ENUM ; 
 scalar_t__ TYPE_CODE_INT ; 
 scalar_t__ TYPE_CODE_RANGE ; 
 scalar_t__ TYPE_CODE_SET ; 
 struct type* FUNC1 (struct type*) ; 
 int /*<<< orphan*/  FUNC2 (struct value*) ; 
 int /*<<< orphan*/  FUNC3 (struct value*) ; 
 struct type* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct value*) ; 
 int FUNC7 (struct type*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct value* FUNC8 (int /*<<< orphan*/ ,int) ; 

struct value *
FUNC9 (struct value *element, struct value *set)
{
  int member;
  struct type *settype = FUNC4 (FUNC3 (set));
  struct type *eltype = FUNC4 (FUNC3 (element));
  if (FUNC0 (eltype) == TYPE_CODE_RANGE)
    eltype = FUNC1 (eltype);
  if (FUNC0 (settype) != TYPE_CODE_SET)
    FUNC5 ("Second argument of 'IN' has wrong type");
  if (FUNC0 (eltype) != TYPE_CODE_INT
      && FUNC0 (eltype) != TYPE_CODE_CHAR
      && FUNC0 (eltype) != TYPE_CODE_ENUM
      && FUNC0 (eltype) != TYPE_CODE_BOOL)
    FUNC5 ("First argument of 'IN' has wrong type");
  member = FUNC7 (settype, FUNC2 (set),
			    FUNC6 (element));
  if (member < 0)
    FUNC5 ("First argument of 'IN' not in range");
  return FUNC8 (LA_BOOL_TYPE, member);
}