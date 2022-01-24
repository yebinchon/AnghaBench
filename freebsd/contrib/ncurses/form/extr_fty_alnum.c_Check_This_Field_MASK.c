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
struct TYPE_2__ {int width; } ;
typedef  TYPE_1__ thisARG ;
typedef  int /*<<< orphan*/  FIELD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,unsigned char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Check_This_Character ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC2(FIELD *field, const void *argp)
{
  int width = ((const thisARG *)argp)->width;
  unsigned char *bp = (unsigned char *)FUNC1(field, 0);
  bool result = (width < 0);

  FUNC0(result, bp, width, Check_This_Character);
  return (result);
}