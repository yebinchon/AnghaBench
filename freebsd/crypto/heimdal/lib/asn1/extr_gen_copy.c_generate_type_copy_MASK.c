#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* gen_name; int /*<<< orphan*/  type; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ Symbol ;

/* Variables and functions */
 int FALSE ; 
 int TRUE ; 
 int /*<<< orphan*/  codefile ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ used_fail ; 

void
FUNC3 (const Symbol *s)
{
  int preserve = FUNC2(s->name) ? TRUE : FALSE;

  used_fail = 0;

  FUNC1 (codefile, "int ASN1CALL\n"
	   "copy_%s(const %s *from, %s *to)\n"
	   "{\n"
	   "memset(to, 0, sizeof(*to));\n",
	   s->gen_name, s->gen_name, s->gen_name);
  FUNC0 ("from", "to", s->type, preserve);
  FUNC1 (codefile, "return 0;\n");

  if (used_fail)
      FUNC1 (codefile, "fail:\n"
	       "free_%s(to);\n"
	       "return ENOMEM;\n",
	       s->gen_name);

  FUNC1(codefile,
	  "}\n\n");
}