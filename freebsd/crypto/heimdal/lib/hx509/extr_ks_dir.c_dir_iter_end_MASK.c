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
struct dircursor {int /*<<< orphan*/  dir; scalar_t__ certs; int /*<<< orphan*/ * iter; } ;
typedef  int /*<<< orphan*/  hx509_context ;
typedef  int /*<<< orphan*/  hx509_certs ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dircursor*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 

__attribute__((used)) static int
FUNC4(hx509_context context,
	     hx509_certs certs,
	     void *data,
	     void *cursor)
{
    struct dircursor *d = cursor;

    if (d->certs) {
	FUNC2(context, d->certs, d->iter);
	d->iter = NULL;
	FUNC3(&d->certs);
    }
    FUNC0(d->dir);
    FUNC1(d);
    return 0;
}