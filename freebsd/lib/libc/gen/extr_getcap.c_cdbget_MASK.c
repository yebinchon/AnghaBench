#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int (* get ) (TYPE_2__*,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_7__ {char* data; scalar_t__ size; } ;
typedef  TYPE_1__ DBT ;
typedef  TYPE_2__ DB ;

/* Variables and functions */
 char SHADOW ; 
 char TCERR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char*) ; 
 int FUNC3 (TYPE_2__*,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(DB *capdbp, char **bp, const char *name)
{
	DBT key, data;
	char *namebuf;

	namebuf = FUNC1(name);
	if (namebuf == NULL)
		return (-2);
	key.data = namebuf;
	key.size = FUNC2(namebuf);

	for (;;) {
		/* Get the reference. */
		switch(capdbp->get(capdbp, &key, &data, 0)) {
		case -1:
			FUNC0(namebuf);
			return (-2);
		case 1:
			FUNC0(namebuf);
			return (-1);
		}

		/* If not an index to another record, leave. */
		if (((char *)data.data)[0] != SHADOW)
			break;

		key.data = (char *)data.data + 1;
		key.size = data.size - 1;
	}

	*bp = (char *)data.data + 1;
	FUNC0(namebuf);
	return (((char *)(data.data))[0] == TCERR ? 1 : 0);
}