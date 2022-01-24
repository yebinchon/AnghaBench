#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__** components; } ;
struct TYPE_3__ {char* locale; } ;

/* Variables and functions */
 int EINVAL ; 
#define  LC_COLLATE 133 
#define  LC_CTYPE 132 
#define  LC_MESSAGES 131 
#define  LC_MONETARY 130 
#define  LC_NUMERIC 129 
#define  LC_TIME 128 
 int _LDP_ERROR ; 
 int FUNC0 (char const*) ; 
 int FUNC1 () ; 
 int FUNC2 (char const*) ; 
 int FUNC3 (char const*) ; 
 int FUNC4 (char const*) ; 
 int FUNC5 (char const*) ; 
 int FUNC6 (char const*) ; 
 TYPE_2__ __xlocale_global_locale ; 
 char** current_categories ; 
 int errno ; 
 char** new_categories ; 
 int /*<<< orphan*/ * FUNC7 (char*,char) ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 

__attribute__((used)) static char *
FUNC10(int category)
{
	char *new = new_categories[category];
	char *old = current_categories[category];
	int (*func) (const char *);
	int saved_errno;

	if ((new[0] == '.' &&
	    (new[1] == '\0' || (new[1] == '.' && new[2] == '\0'))) ||
	    FUNC7(new, '/') != NULL) {
		errno = EINVAL;
		return (NULL);
	}
	saved_errno = errno;
	errno = FUNC1();
	if (errno != 0)
		return (NULL);
	errno = saved_errno;

	switch (category) {
	case LC_CTYPE:
		func = __wrap_setrunelocale;
		break;
	case LC_COLLATE:
		func = __collate_load_tables;
		break;
	case LC_TIME:
		func = __time_load_locale;
		break;
	case LC_NUMERIC:
		func = __numeric_load_locale;
		break;
	case LC_MONETARY:
		func = __monetary_load_locale;
		break;
	case LC_MESSAGES:
		func = __messages_load_locale;
		break;
	default:
		errno = EINVAL;
		return (NULL);
	}

	if (FUNC8(new, old) == 0)
		return (old);

	if (func(new) != _LDP_ERROR) {
		(void)FUNC9(old, new);
		(void)FUNC9(__xlocale_global_locale.components[category-1]->locale, new);
		return (old);
	}

	return (NULL);
}