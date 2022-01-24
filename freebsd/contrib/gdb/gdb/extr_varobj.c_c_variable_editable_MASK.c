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

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  TYPE_CODE_ARRAY 133 
#define  TYPE_CODE_FUNC 132 
#define  TYPE_CODE_MEMBER 131 
#define  TYPE_CODE_METHOD 130 
#define  TYPE_CODE_STRUCT 129 
#define  TYPE_CODE_UNION 128 
 int /*<<< orphan*/  FUNC1 (struct varobj*) ; 

__attribute__((used)) static int
FUNC2 (struct varobj *var)
{
  switch (FUNC0 (FUNC1 (var)))
    {
    case TYPE_CODE_STRUCT:
    case TYPE_CODE_UNION:
    case TYPE_CODE_ARRAY:
    case TYPE_CODE_FUNC:
    case TYPE_CODE_MEMBER:
    case TYPE_CODE_METHOD:
      return 0;
      break;

    default:
      return 1;
      break;
    }
}