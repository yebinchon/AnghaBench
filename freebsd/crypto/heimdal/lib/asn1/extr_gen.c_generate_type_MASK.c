#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {char* gen_name; int /*<<< orphan*/  name; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ Symbol ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * codefile ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__ const*) ; 
 int /*<<< orphan*/ * headerfile ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  one_code_file ; 
 int /*<<< orphan*/ * privheaderfile ; 
 scalar_t__ template_flag ; 

void
FUNC14 (const Symbol *s)
{
    FILE *h;
    const char * exp;

    if (!one_code_file)
	FUNC3(s->gen_name);

    FUNC9 (s);

    if (template_flag)
	FUNC4(s);

    if (template_flag == 0 || FUNC13(s) == 0) {
	FUNC7 (s);
	FUNC6 (s);
	FUNC8 (s);
	FUNC10 (s);
	FUNC5 (s);
    }
    FUNC11 (s);
    FUNC2 (s->type, s->gen_name);

    /* generate prototypes */

    if (FUNC12(s->name)) {
	h = headerfile;
	exp = "ASN1EXP ";
    } else {
	h = privheaderfile;
	exp = "";
    }

    FUNC1 (h,
	     "%sint    ASN1CALL "
	     "decode_%s(const unsigned char *, size_t, %s *, size_t *);\n",
	     exp,
	     s->gen_name, s->gen_name);
    FUNC1 (h,
	     "%sint    ASN1CALL "
	     "encode_%s(unsigned char *, size_t, const %s *, size_t *);\n",
	     exp,
	     s->gen_name, s->gen_name);
    FUNC1 (h,
	     "%ssize_t ASN1CALL length_%s(const %s *);\n",
	     exp,
	     s->gen_name, s->gen_name);
    FUNC1 (h,
	     "%sint    ASN1CALL copy_%s  (const %s *, %s *);\n",
	     exp,
	     s->gen_name, s->gen_name, s->gen_name);
    FUNC1 (h,
	     "%svoid   ASN1CALL free_%s  (%s *);\n",
	     exp,
	     s->gen_name, s->gen_name);

    FUNC1(h, "\n\n");

    if (!one_code_file) {
	FUNC1(codefile, "\n\n");
	FUNC0();
	}
}