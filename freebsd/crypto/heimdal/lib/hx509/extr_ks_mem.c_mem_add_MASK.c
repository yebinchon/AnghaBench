#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int len; int /*<<< orphan*/ * val; } ;
struct mem_data {TYPE_1__ certs; } ;
typedef  int /*<<< orphan*/  hx509_context ;
typedef  int /*<<< orphan*/  hx509_certs ;
typedef  int /*<<< orphan*/  hx509_cert ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC2(hx509_context context, hx509_certs certs, void *data, hx509_cert c)
{
    struct mem_data *mem = data;
    hx509_cert *val;

    val = FUNC1(mem->certs.val,
		  (mem->certs.len + 1) * sizeof(mem->certs.val[0]));
    if (val == NULL)
	return ENOMEM;

    mem->certs.val = val;
    mem->certs.val[mem->certs.len] = FUNC0(c);
    mem->certs.len++;

    return 0;
}