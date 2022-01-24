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
struct get_entry_data {int /*<<< orphan*/  table; struct field_info* chead; } ;
struct field_info {TYPE_1__* ff; struct field_info* next; } ;
typedef  int /*<<< orphan*/  kadm5_principal_ent_t ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {int /*<<< orphan*/  fieldvalue; int /*<<< orphan*/  subvalue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC2(struct get_entry_data *data, kadm5_principal_ent_t princ)
{
    char buf[1024];
    struct field_info *f;

    for(f = data->chead; f != NULL; f = f->next) {
	FUNC0(princ, f->ff->fieldvalue, f->ff->subvalue, buf, sizeof(buf), 1);
	FUNC1(data->table, f->ff->fieldvalue, buf);
    }
}