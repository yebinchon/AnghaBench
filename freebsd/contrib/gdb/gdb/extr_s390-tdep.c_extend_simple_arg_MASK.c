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
typedef  int /*<<< orphan*/  LONGEST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct type*) ; 
 scalar_t__ FUNC1 (struct type*) ; 
 int /*<<< orphan*/  FUNC2 (struct value*) ; 
 struct type* FUNC3 (struct value*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static LONGEST
FUNC6 (struct value *arg)
{
  struct type *type = FUNC3 (arg);

  /* Even structs get passed in the least significant bits of the
     register / memory word.  It's not really right to extract them as
     an integer, but it does take care of the extension.  */
  if (FUNC1 (type))
    return FUNC5 (FUNC2 (arg),
                                     FUNC0 (type));
  else
    return FUNC4 (FUNC2 (arg),
                                   FUNC0 (type));
}