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
struct varobj {int dummy; } ;
struct type {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct type*) ; 
 scalar_t__ TYPE_CODE_PTR ; 
 scalar_t__ TYPE_CODE_REF ; 
 struct type* FUNC1 (struct type*) ; 
 struct type* FUNC2 (struct varobj*) ; 

__attribute__((used)) static struct type *
FUNC3 (struct varobj *var)
{
  struct type *type;

  type = FUNC2 (var);

  if (type != NULL && (FUNC0 (type) == TYPE_CODE_PTR
		       || FUNC0 (type) == TYPE_CODE_REF))
    type = FUNC1 (type);

  return type;
}