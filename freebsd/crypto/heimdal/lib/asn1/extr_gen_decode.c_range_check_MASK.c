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
struct range {int min; int max; } ;

/* Variables and functions */
 int /*<<< orphan*/  codefile ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,char const*,int,char const*) ; 

__attribute__((used)) static void
FUNC1(const char *name,
	    const char *length,
	    const char *forwstr,
	    struct range *r)
{
    if (r->min == r->max + 2 || r->min < r->max)
	FUNC0 (codefile,
		 "if ((%s)->%s > %d) {\n"
		 "e = ASN1_MAX_CONSTRAINT; %s;\n"
		 "}\n",
		 name, length, r->max, forwstr);
    if (r->min - 1 == r->max || r->min < r->max)
	FUNC0 (codefile,
		 "if ((%s)->%s < %d) {\n"
		 "e = ASN1_MIN_CONSTRAINT; %s;\n"
		 "}\n",
		 name, length, r->min, forwstr);
    if (r->max == r->min)
	FUNC0 (codefile,
		 "if ((%s)->%s != %d) {\n"
		 "e = ASN1_EXACT_CONSTRAINT; %s;\n"
		 "}\n",
		 name, length, r->min, forwstr);
}