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
struct stat {int st_size; } ;
struct futx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUFSIZ ; 
 int /*<<< orphan*/  EFTYPE ; 
 int /*<<< orphan*/  EINVAL ; 
#define  UTXDB_ACTIVE 130 
#define  UTXDB_LASTLOGIN 129 
#define  UTXDB_LOG 128 
 int /*<<< orphan*/  _IOFBF ; 
 char* _PATH_UTX_ACTIVE ; 
 char* _PATH_UTX_LASTLOGIN ; 
 char* _PATH_UTX_LOG ; 
 int FUNC0 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int udb ; 
 int /*<<< orphan*/ * uf ; 

int
FUNC6(int db, const char *file)
{
	struct stat sb;

	switch (db) {
	case UTXDB_ACTIVE:
		if (file == NULL)
			file = _PATH_UTX_ACTIVE;
		break;
	case UTXDB_LASTLOGIN:
		if (file == NULL)
			file = _PATH_UTX_LASTLOGIN;
		break;
	case UTXDB_LOG:
		if (file == NULL)
			file = _PATH_UTX_LOG;
		break;
	default:
		errno = EINVAL;
		return (-1);
	}

	if (uf != NULL)
		FUNC1(uf);
	uf = FUNC3(file, "re");
	if (uf == NULL)
		return (-1);

	if (db != UTXDB_LOG) {
		/* Safety check: never use broken files. */
		if (FUNC0(FUNC2(uf), &sb) != -1 &&
		    sb.st_size % sizeof(struct futx) != 0) {
			FUNC1(uf);
			uf = NULL;
			errno = EFTYPE;
			return (-1);
		}
		/* Prevent reading of partial records. */
		(void)FUNC5(uf, NULL, _IOFBF,
		    FUNC4(BUFSIZ, sizeof(struct futx)));
	}

	udb = db;
	return (0);
}