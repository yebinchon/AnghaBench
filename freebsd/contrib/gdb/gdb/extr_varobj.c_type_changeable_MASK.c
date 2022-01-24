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
 scalar_t__ FUNC0 (struct varobj*) ; 
 int FUNC1 (struct type*) ; 
#define  TYPE_CODE_ARRAY 130 
#define  TYPE_CODE_STRUCT 129 
#define  TYPE_CODE_UNION 128 
 struct type* FUNC2 (struct varobj*) ; 

__attribute__((used)) static int
FUNC3 (struct varobj *var)
{
  int r;
  struct type *type;

  if (FUNC0 (var))
    return 0;

  type = FUNC2 (var);

  switch (FUNC1 (type))
    {
    case TYPE_CODE_STRUCT:
    case TYPE_CODE_UNION:
    case TYPE_CODE_ARRAY:
      r = 0;
      break;

    default:
      r = 1;
    }

  return r;
}