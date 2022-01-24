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
struct ui_file {int dummy; } ;
struct type {int dummy; } ;
typedef  scalar_t__ LONGEST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct type*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char,struct ui_file*) ; 
 int FUNC2 (struct type*) ; 
#define  TYPE_CODE_ARRAY 147 
#define  TYPE_CODE_BOOL 146 
#define  TYPE_CODE_CHAR 145 
#define  TYPE_CODE_ENUM 144 
#define  TYPE_CODE_ERROR 143 
#define  TYPE_CODE_FLT 142 
#define  TYPE_CODE_FUNC 141 
#define  TYPE_CODE_INT 140 
#define  TYPE_CODE_MEMBER 139 
#define  TYPE_CODE_METHOD 138 
#define  TYPE_CODE_NAMESPACE 137 
#define  TYPE_CODE_PTR 136 
#define  TYPE_CODE_RANGE 135 
#define  TYPE_CODE_REF 134 
#define  TYPE_CODE_SET 133 
#define  TYPE_CODE_STRING 132 
#define  TYPE_CODE_STRUCT 131 
#define  TYPE_CODE_UNDEF 130 
#define  TYPE_CODE_UNION 129 
#define  TYPE_CODE_VOID 128 
 scalar_t__ FUNC3 (struct type*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct type*,unsigned int) ; 
 unsigned int FUNC5 (struct type*) ; 
 struct type* FUNC6 (struct type*) ; 
 int /*<<< orphan*/  FUNC7 (struct type*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (struct ui_file*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC11 (struct ui_file*) ; 
 int /*<<< orphan*/  FUNC12 (struct ui_file*,unsigned char,int /*<<< orphan*/ ,scalar_t__) ; 

void
FUNC13 (struct type *type, LONGEST val, struct ui_file *stream)
{
  unsigned int i;
  unsigned len;

  FUNC0 (type);

  switch (FUNC2 (type))
    {

    case TYPE_CODE_ENUM:
      len = FUNC5 (type);
      for (i = 0; i < len; i++)
	{
	  if (FUNC3 (type, i) == val)
	    {
	      break;
	    }
	}
      if (i < len)
	{
	  FUNC10 (FUNC4 (type, i), stream);
	}
      else
	{
	  FUNC12 (stream, 'd', 0, val);
	}
      break;

    case TYPE_CODE_INT:
      FUNC12 (stream, FUNC7 (type) ? 'u' : 'd', 0, val);
      break;

    case TYPE_CODE_CHAR:
      FUNC1 ((unsigned char) val, stream);
      break;

    case TYPE_CODE_BOOL:
      FUNC9 (stream, val ? "TRUE" : "FALSE");
      break;

    case TYPE_CODE_RANGE:
      FUNC13 (FUNC6 (type), val, stream);
      return;

    case TYPE_CODE_UNDEF:
    case TYPE_CODE_PTR:
    case TYPE_CODE_ARRAY:
    case TYPE_CODE_STRUCT:
    case TYPE_CODE_UNION:
    case TYPE_CODE_FUNC:
    case TYPE_CODE_FLT:
    case TYPE_CODE_VOID:
    case TYPE_CODE_SET:
    case TYPE_CODE_STRING:
    case TYPE_CODE_ERROR:
    case TYPE_CODE_MEMBER:
    case TYPE_CODE_METHOD:
    case TYPE_CODE_REF:
    case TYPE_CODE_NAMESPACE:
      FUNC8 ("internal error: unhandled type in print_type_scalar");
      break;

    default:
      FUNC8 ("Invalid type code in symbol table.");
    }
  FUNC11 (stream);
}