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
 int FUNC0 (struct type const*) ; 
#define  TYPE_CODE_BOOL 134 
#define  TYPE_CODE_CHAR 133 
#define  TYPE_CODE_ENUM 132 
#define  TYPE_CODE_INT 131 
#define  TYPE_CODE_PTR 130 
#define  TYPE_CODE_RANGE 129 
#define  TYPE_CODE_REF 128 
 int FUNC1 (struct type const*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int
FUNC3 (const struct type *type)
{
  switch (FUNC0 (type))
    {
    case TYPE_CODE_INT:
    case TYPE_CODE_BOOL:
    case TYPE_CODE_CHAR:
    case TYPE_CODE_ENUM:
    case TYPE_CODE_RANGE:
      {
	int len = FUNC1 (type);
	FUNC2 (len == 1 || len == 2 || len == 4 || len == 8);
      }
      return 1;
    case TYPE_CODE_PTR:
    case TYPE_CODE_REF:
      {
	int len = FUNC1 (type);
	FUNC2 (len == 8);
      }
      return 1;
    default:
      break;
    }

  return 0;
}