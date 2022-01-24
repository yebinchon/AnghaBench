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
typedef  int uint32_t ;
struct descr {int len; scalar_t__ buf; } ;
typedef  int /*<<< orphan*/  krb5_storage ;
typedef  int /*<<< orphan*/  krb5_kdc_configuration ;
typedef  int /*<<< orphan*/  krb5_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,int) ; 

__attribute__((used)) static int
FUNC5 (krb5_context context,
		    krb5_kdc_configuration *config,
		    struct descr *d)
{
    krb5_storage *sp;
    uint32_t len;

    sp = FUNC3(d->buf, d->len);
    if (sp == NULL) {
	FUNC0 (context, config, 0, "krb5_storage_from_mem failed");
	return -1;
    }
    FUNC1(sp, &len);
    FUNC2(sp);
    if(d->len - 4 >= len) {
	FUNC4(d->buf, d->buf + 4, d->len - 4);
	d->len -= 4;
	return 1;
    }
    return 0;
}