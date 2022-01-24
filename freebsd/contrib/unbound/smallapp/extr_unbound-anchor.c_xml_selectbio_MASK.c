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
struct xml_data {int /*<<< orphan*/ * cdigest; int /*<<< orphan*/ * cdigtype; int /*<<< orphan*/ * calgo; int /*<<< orphan*/ * ctag; } ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,char*) ; 

__attribute__((used)) static BIO*
FUNC1(struct xml_data* data, const char* tag)
{
	BIO* b = NULL;
	if(FUNC0(tag, "KeyTag") == 0)
		b = data->ctag;
	else if(FUNC0(tag, "Algorithm") == 0)
		b = data->calgo;
	else if(FUNC0(tag, "DigestType") == 0)
		b = data->cdigtype;
	else if(FUNC0(tag, "Digest") == 0)
		b = data->cdigest;
	return b;
}