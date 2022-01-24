#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct timeval {int /*<<< orphan*/  tv_usec; int /*<<< orphan*/  tv_sec; } ;
typedef  int krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_data ;
typedef  int /*<<< orphan*/  krb5_context ;
struct TYPE_18__ {int /*<<< orphan*/  principal; TYPE_4__* generation; } ;
struct TYPE_15__ {TYPE_6__ entry; } ;
typedef  TYPE_1__ hdb_entry_ex ;
struct TYPE_17__ {scalar_t__ gen; int /*<<< orphan*/  usec; int /*<<< orphan*/  time; } ;
struct TYPE_16__ {int (* hdb__put ) (int /*<<< orphan*/ ,TYPE_2__*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_2__ HDB ;

/* Variables and functions */
 int ENOMEM ; 
 unsigned int HDB_F_REPLACE ; 
 int /*<<< orphan*/  FUNC0 (struct timeval*,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,unsigned int,TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,TYPE_2__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,char*) ; 
 TYPE_4__* FUNC9 (int) ; 
 int FUNC10 (int /*<<< orphan*/ ,TYPE_2__*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

krb5_error_code
FUNC11(krb5_context context, HDB *db, unsigned flags, hdb_entry_ex *entry)
{
    krb5_data key, value;
    int code;

    /* check if new aliases already is used */
    code = FUNC2(context, db, entry);
    if (code)
	return code;

    if(entry->entry.generation == NULL) {
	struct timeval t;
	entry->entry.generation = FUNC9(sizeof(*entry->entry.generation));
	if(entry->entry.generation == NULL) {
	    FUNC8(context, ENOMEM, "malloc: out of memory");
	    return ENOMEM;
	}
	FUNC0(&t, NULL);
	entry->entry.generation->time = t.tv_sec;
	entry->entry.generation->usec = t.tv_usec;
	entry->entry.generation->gen = 0;
    } else
	entry->entry.generation->gen++;

    code = FUNC6(context, db, &entry->entry);
    if (code)
	return code;

    FUNC4(context, entry->entry.principal, &key);

    /* remove aliases */
    code = FUNC5(context, db, &key);
    if (code) {
	FUNC7(&key);
	return code;
    }
    FUNC3(context, &entry->entry, &value);
    code = db->hdb__put(context, db, flags & HDB_F_REPLACE, key, value);
    FUNC7(&value);
    FUNC7(&key);
    if (code)
	return code;

    code = FUNC1(context, db, flags, entry);

    return code;
}