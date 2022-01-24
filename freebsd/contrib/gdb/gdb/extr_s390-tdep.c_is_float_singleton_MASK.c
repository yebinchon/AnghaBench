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
struct type {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct type*) ; 
 scalar_t__ FUNC1 (struct type*) ; 
 scalar_t__ TYPE_CODE_FLT ; 
 scalar_t__ TYPE_CODE_STRUCT ; 
 struct type* FUNC2 (struct type*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct type*) ; 

__attribute__((used)) static int
FUNC4 (struct type *type)
{
  if (FUNC1 (type) == TYPE_CODE_STRUCT && FUNC3 (type) == 1)
    {
      struct type *singleton_type = FUNC2 (type, 0);
      FUNC0 (singleton_type);

      return (FUNC1 (singleton_type) == TYPE_CODE_FLT
	      || FUNC4 (singleton_type));
    }

  return 0;
}