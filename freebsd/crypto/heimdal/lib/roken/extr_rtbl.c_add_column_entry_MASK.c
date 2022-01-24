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
struct column_entry {int /*<<< orphan*/ * data; } ;
struct column_data {int num_rows; struct column_entry* rows; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct column_entry* FUNC1 (struct column_entry*,int) ; 
 int /*<<< orphan*/ * FUNC2 (char const*) ; 

__attribute__((used)) static int
FUNC3 (struct column_data *c, const char *data)
{
    struct column_entry row, *tmp;

    row.data = FUNC2 (data);
    if (row.data == NULL)
	return ENOMEM;
    tmp = FUNC1 (c->rows, (c->num_rows + 1) * sizeof (*tmp));
    if (tmp == NULL) {
	FUNC0 (row.data);
	return ENOMEM;
    }
    c->rows = tmp;
    c->rows[c->num_rows++] = row;
    return 0;
}