#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* gen_name; int /*<<< orphan*/  type; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ Symbol ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const**,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 scalar_t__ support_ber ; 
 scalar_t__ FUNC4 (TYPE_1__ const*) ; 

void
FUNC5(const Symbol *s)
{
    FILE *f = FUNC3();
    const char *dupname;

    if (FUNC4(s)) {
	FUNC1(f, s->gen_name);
	return;
    }

    FUNC2(s->gen_name, &dupname, s->name, s->gen_name, NULL, s->type, 0, 0, 1);

    FUNC0(f,
	    "\n"
	    "int\n"
	    "decode_%s(const unsigned char *p, size_t len, %s *data, size_t *size)\n"
	    "{\n"
	    "    return _asn1_decode_top(asn1_%s, 0|%s, p, len, data, size);\n"
	    "}\n"
	    "\n",
	    s->gen_name,
	    s->gen_name,
	    dupname,
	    support_ber ? "A1_PF_ALLOW_BER" : "0");

    FUNC0(f,
	    "\n"
	    "int\n"
	    "encode_%s(unsigned char *p, size_t len, const %s *data, size_t *size)\n"
	    "{\n"
	    "    return _asn1_encode(asn1_%s, p, len, data, size);\n"
	    "}\n"
	    "\n",
	    s->gen_name,
	    s->gen_name,
	    dupname);

    FUNC0(f,
	    "\n"
	    "size_t\n"
	    "length_%s(const %s *data)\n"
	    "{\n"
	    "    return _asn1_length(asn1_%s, data);\n"
	    "}\n"
	    "\n",
	    s->gen_name,
	    s->gen_name,
	    dupname);


    FUNC0(f,
	    "\n"
	    "void\n"
	    "free_%s(%s *data)\n"
	    "{\n"
	    "    _asn1_free(asn1_%s, data);\n"
	    "}\n"
	    "\n",
	    s->gen_name,
	    s->gen_name,
	    dupname);

    FUNC0(f,
	    "\n"
	    "int\n"
	    "copy_%s(const %s *from, %s *to)\n"
	    "{\n"
	    "    return _asn1_copy_top(asn1_%s, from, to);\n"
	    "}\n"
	    "\n",
	    s->gen_name,
	    s->gen_name,
	    s->gen_name,
	    dupname);
}