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
struct get_entry_data {int dummy; } ;
struct field_name {int /*<<< orphan*/ * fieldname; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct get_entry_data*,struct field_name*,char*) ; 
 int /*<<< orphan*/  context ; 
 struct field_name* field_names ; 
 int /*<<< orphan*/  FUNC1 (struct get_entry_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ *) ; 
 char* FUNC4 (char**,char*) ; 
 int FUNC5 (char const**,char*,char*,int) ; 

__attribute__((used)) static int
FUNC6(struct get_entry_data *data, const char *column_info)
{
    char buf[1024], *q;
    char *field, *header;
    struct field_name *f;

    while(FUNC5(&column_info, ",", buf, sizeof(buf)) != -1) {
	q = buf;
	field = FUNC4(&q, "=");
	header = FUNC4(&q, "=");
	for(f = field_names; f->fieldname != NULL; f++) {
	    if(FUNC3(field, f->fieldname) == 0) {
		FUNC0(data, f, header);
		break;
	    }
	}
	if(f->fieldname == NULL) {
	    FUNC2(context, "unknown field name \"%s\"", field);
	    FUNC1(data);
	    return -1;
	}
    }
    return 0;
}