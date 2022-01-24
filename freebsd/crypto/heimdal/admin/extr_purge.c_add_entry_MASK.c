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
typedef  void* time_t ;
struct e {int max_vno; struct e* next; void* timestamp; int /*<<< orphan*/  principal; } ;
typedef  int /*<<< orphan*/  krb5_principal ;
typedef  scalar_t__ krb5_error_code ;

/* Variables and functions */
 int /*<<< orphan*/  context ; 
 struct e* FUNC0 (int /*<<< orphan*/ ,struct e*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*) ; 
 struct e* FUNC4 (int) ; 

__attribute__((used)) static void
FUNC5 (krb5_principal princ, int vno, time_t timestamp, struct e **head)
{
    krb5_error_code ret;
    struct e *e;

    e = FUNC0 (princ, *head);
    if (e != NULL) {
	if(e->max_vno < vno) {
	    e->max_vno = vno;
	    e->timestamp = timestamp;
	}
	return;
    }
    e = FUNC4 (sizeof (*e));
    if (e == NULL)
	FUNC3 (context, 1, "malloc: out of memory");
    ret = FUNC1 (context, princ, &e->principal);
    if (ret)
	FUNC2 (context, 1, ret, "krb5_copy_principal");
    e->max_vno = vno;
    e->timestamp = timestamp;
    e->next    = *head;
    *head      = e;
}