#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {struct TYPE_8__* right; struct TYPE_8__* left; } ;
typedef  TYPE_2__ TypeArgument ;
struct TYPE_7__ {int (* occheck ) (int,void*) ;int (* gccheck ) (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*) ;} ;
struct TYPE_9__ {int status; int (* ccheck ) (int,void*) ;TYPE_1__ charcheck; struct TYPE_9__* right; struct TYPE_9__* left; } ;
typedef  int /*<<< orphan*/  FORM ;
typedef  TYPE_3__ FIELDTYPE ;
typedef  int /*<<< orphan*/  FIELD ;

/* Variables and functions */
 int FALSE ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int _GENERIC ; 
 int _LINKED_TYPE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*) ; 
 int FUNC4 (int,void*) ; 
 int FUNC5 (int,void*) ; 

__attribute__((used)) static bool
FUNC6(FORM *form,
	   FIELD *field,
	   FIELDTYPE *typ,
	   int ch,
	   TypeArgument *argp)
{
  if (typ)
    {
      if (typ->status & _LINKED_TYPE)
	{
	  FUNC1(argp);
	  return (
		   FUNC6(form, field, typ->left, ch, argp->left) ||
		   FUNC6(form, field, typ->right, ch, argp->right));
	}
      else
	{
#if NCURSES_INTEROP_FUNCS
	  if (typ->charcheck.occheck)
	    {
	      if (typ->status & _GENERIC)
		return typ->charcheck.gccheck(ch, form, field, (void *)argp);
	      else
		return typ->charcheck.occheck(ch, (void *)argp);
	    }
#else
	  if (typ->ccheck)
	    return typ->ccheck(ch, (void *)argp);
#endif
	}
    }
  return (!FUNC2(FUNC0(ch)) ? TRUE : FALSE);
}