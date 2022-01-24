#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  reg_errcode_t ;
struct TYPE_7__ {unsigned char c; } ;
struct TYPE_9__ {int type; TYPE_1__ opr; } ;
typedef  TYPE_3__ re_token_t ;
typedef  int /*<<< orphan*/  re_string_t ;
struct TYPE_8__ {unsigned char* name; } ;
struct TYPE_10__ {int /*<<< orphan*/  type; TYPE_2__ opr; } ;
typedef  TYPE_4__ bracket_elem_t ;

/* Variables and functions */
 int BRACKET_NAME_BUF_SIZE ; 
 int /*<<< orphan*/  CHAR_CLASS ; 
 int /*<<< orphan*/  COLL_SYM ; 
 int /*<<< orphan*/  EQUIV_CLASS ; 
#define  OP_OPEN_CHAR_CLASS 130 
#define  OP_OPEN_COLL_ELEM 129 
#define  OP_OPEN_EQUIV_CLASS 128 
 int /*<<< orphan*/  REG_EBRACK ; 
 int /*<<< orphan*/  REG_NOERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned char FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned char FUNC2 (int /*<<< orphan*/ *) ; 
 char FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static reg_errcode_t
FUNC5 (bracket_elem_t *elem, re_string_t *regexp,
		      re_token_t *token)
{
  unsigned char ch, delim = token->opr.c;
  int i = 0;
  if (FUNC0(regexp))
    return REG_EBRACK;
  for (;; ++i)
    {
      if (i >= BRACKET_NAME_BUF_SIZE)
	return REG_EBRACK;
      if (token->type == OP_OPEN_CHAR_CLASS)
	ch = FUNC2 (regexp);
      else
	ch = FUNC1 (regexp);
      if (FUNC0(regexp))
	return REG_EBRACK;
      if (ch == delim && FUNC3 (regexp, 0) == ']')
	break;
      elem->opr.name[i] = ch;
    }
  FUNC4 (regexp, 1);
  elem->opr.name[i] = '\0';
  switch (token->type)
    {
    case OP_OPEN_COLL_ELEM:
      elem->type = COLL_SYM;
      break;
    case OP_OPEN_EQUIV_CLASS:
      elem->type = EQUIV_CLASS;
      break;
    case OP_OPEN_CHAR_CLASS:
      elem->type = CHAR_CLASS;
      break;
    default:
      break;
    }
  return REG_NOERROR;
}