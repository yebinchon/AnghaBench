#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct slave {int /*<<< orphan*/  fd; int /*<<< orphan*/  ac; } ;
typedef  int /*<<< orphan*/  krb5_storage ;
typedef  int krb5_error_code ;
struct TYPE_9__ {scalar_t__ length; scalar_t__ data; } ;
typedef  TYPE_1__ krb5_data ;
typedef  int /*<<< orphan*/  krb5_context ;
struct TYPE_10__ {int /*<<< orphan*/  entry; } ;
typedef  TYPE_2__ hdb_entry_ex ;
typedef  int /*<<< orphan*/  HDB ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  ONE_PRINC ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int
FUNC8 (krb5_context context, HDB *db, hdb_entry_ex *entry, void *v)
{
    krb5_error_code ret;
    krb5_storage *sp;
    krb5_data data;
    struct slave *s = (struct slave *)v;

    ret = FUNC0 (context, &entry->entry, &data);
    if (ret)
	return ret;
    ret = FUNC2 (&data, data.length + 4);
    if (ret) {
	FUNC1 (&data);
	return ret;
    }
    FUNC7 ((char *)data.data + 4, data.data, data.length - 4);
    sp = FUNC4(&data);
    if (sp == NULL) {
	FUNC1 (&data);
	return ENOMEM;
    }
    FUNC5(sp, ONE_PRINC);
    FUNC3(sp);

    ret = FUNC6 (context, s->ac, &s->fd, &data);
    FUNC1 (&data);
    return ret;
}