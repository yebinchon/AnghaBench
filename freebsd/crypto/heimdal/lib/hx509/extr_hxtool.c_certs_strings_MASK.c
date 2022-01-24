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
typedef  int /*<<< orphan*/  hx509_lock ;
typedef  int /*<<< orphan*/  hx509_context ;
typedef  int /*<<< orphan*/  hx509_certs ;
struct TYPE_3__ {int num_strings; int /*<<< orphan*/ * strings; } ;
typedef  TYPE_1__ getarg_strings ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,char*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(hx509_context contextp, const char *type, hx509_certs certs,
	      hx509_lock lock, const getarg_strings *s)
{
    int i, ret;

    for (i = 0; i < s->num_strings; i++) {
	ret = FUNC0(contextp, certs, lock, s->strings[i]);
	if (ret)
	    FUNC1(contextp, 1, ret,
		      "hx509_certs_append: %s %s", type, s->strings[i]);
    }
}