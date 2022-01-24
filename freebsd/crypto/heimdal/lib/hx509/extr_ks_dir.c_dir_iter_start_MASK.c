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
struct dircursor {int /*<<< orphan*/ * iter; int /*<<< orphan*/ * certs; int /*<<< orphan*/ * dir; } ;
typedef  int /*<<< orphan*/  hx509_context ;
typedef  int /*<<< orphan*/  hx509_certs ;

/* Variables and functions */
 int ENOMEM ; 
 struct dircursor* FUNC0 (int,int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (struct dircursor*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(hx509_context context,
	       hx509_certs certs, void *data, void **cursor)
{
    struct dircursor *d;

    *cursor = NULL;

    d = FUNC0(1, sizeof(*d));
    if (d == NULL) {
	FUNC2(context);
	return ENOMEM;
    }

    d->dir = FUNC3(data);
    if (d->dir == NULL) {
	FUNC2(context);
	FUNC1(d);
	return errno;
    }
    FUNC4(d->dir);
    d->certs = NULL;
    d->iter = NULL;

    *cursor = d;
    return 0;
}