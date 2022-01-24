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
typedef  int /*<<< orphan*/  subline ;
typedef  int /*<<< orphan*/  line ;
struct TYPE_2__ {char* fs_spec; char* fs_file; char* fs_type; char* fs_mntops; char* fs_vfstype; void* fs_passno; void* fs_freq; } ;

/* Variables and functions */
 int /*<<< orphan*/  EFTYPE ; 
 void* FSTAB_RO ; 
 void* FSTAB_RQ ; 
 void* FSTAB_RW ; 
 void* FSTAB_SW ; 
 void* FSTAB_XX ; 
 int /*<<< orphan*/  LineNo ; 
 int MAXLINELENGTH ; 
 int /*<<< orphan*/  _fs_fp ; 
 TYPE_1__ _fs_fstab ; 
 void* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (char*,void*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 void* FUNC8 (char**,char*) ; 
 scalar_t__ FUNC9 (char*,char*) ; 

__attribute__((used)) static int
FUNC10(void)
{
	char *cp, *p;
#define	MAXLINELENGTH	1024
	static char line[MAXLINELENGTH];
	char subline[MAXLINELENGTH];
	int typexx;

	for (;;) {

		if (!(p = FUNC2(line, sizeof(line), _fs_fp)))
			return (0);
/* OLD_STYLE_FSTAB */
		++LineNo;
		if (*line == '#' || *line == '\n')
			continue;
		if (!FUNC7(p, " \t")) {
			_fs_fstab.fs_spec = FUNC8(&p, ":\n");
			_fs_fstab.fs_file = FUNC8(&p, ":\n");
			FUNC3();
			_fs_fstab.fs_type = FUNC8(&p, ":\n");
			if (_fs_fstab.fs_type) {
				if (!FUNC4(_fs_fstab.fs_type, FSTAB_XX))
					continue;
				_fs_fstab.fs_mntops = _fs_fstab.fs_type;
				_fs_fstab.fs_vfstype =
				    FUNC4(_fs_fstab.fs_type, FSTAB_SW) ?
				    "ufs" : "swap";
				if ((cp = FUNC8(&p, ":\n")) != NULL) {
					_fs_fstab.fs_freq = FUNC0(cp);
					if ((cp = FUNC8(&p, ":\n")) != NULL) {
						_fs_fstab.fs_passno = FUNC0(cp);
						return (1);
					}
				}
			}
			goto bad;
		}
/* OLD_STYLE_FSTAB */
		while ((cp = FUNC8(&p, " \t\n")) != NULL && *cp == '\0')
			;
		_fs_fstab.fs_spec = cp;
		if (_fs_fstab.fs_spec == NULL || *_fs_fstab.fs_spec == '#')
			continue;
		if (FUNC9(_fs_fstab.fs_spec, _fs_fstab.fs_spec) < 0)
			goto bad;
		while ((cp = FUNC8(&p, " \t\n")) != NULL && *cp == '\0')
			;
		_fs_fstab.fs_file = cp;
		if (_fs_fstab.fs_file == NULL)
			goto bad;
		if (FUNC9(_fs_fstab.fs_file, _fs_fstab.fs_file) < 0)
			goto bad;
		FUNC3();
		while ((cp = FUNC8(&p, " \t\n")) != NULL && *cp == '\0')
			;
		_fs_fstab.fs_vfstype = cp;
		while ((cp = FUNC8(&p, " \t\n")) != NULL && *cp == '\0')
			;
		_fs_fstab.fs_mntops = cp;
		if (_fs_fstab.fs_mntops == NULL)
			goto bad;
		_fs_fstab.fs_freq = 0;
		_fs_fstab.fs_passno = 0;
		while ((cp = FUNC8(&p, " \t\n")) != NULL && *cp == '\0')
			;
		if (cp != NULL) {
			_fs_fstab.fs_freq = FUNC0(cp);
			while ((cp = FUNC8(&p, " \t\n")) != NULL && *cp == '\0')
				;
			if (cp != NULL)
				_fs_fstab.fs_passno = FUNC0(cp);
		}
		(void)FUNC5(subline, _fs_fstab.fs_mntops, sizeof(subline));
		p = subline;
		for (typexx = 0, cp = FUNC8(&p, ","); cp;
		     cp = FUNC8(&p, ",")) {
			if (FUNC6(cp) != 2)
				continue;
			if (!FUNC4(cp, FSTAB_RW)) {
				_fs_fstab.fs_type = FSTAB_RW;
				break;
			}
			if (!FUNC4(cp, FSTAB_RQ)) {
				_fs_fstab.fs_type = FSTAB_RQ;
				break;
			}
			if (!FUNC4(cp, FSTAB_RO)) {
				_fs_fstab.fs_type = FSTAB_RO;
				break;
			}
			if (!FUNC4(cp, FSTAB_SW)) {
				_fs_fstab.fs_type = FSTAB_SW;
				break;
			}
			if (!FUNC4(cp, FSTAB_XX)) {
				_fs_fstab.fs_type = FSTAB_XX;
				typexx++;
				break;
			}
		}
		if (typexx)
			continue;
		if (cp != NULL)
			return (1);

bad:		/* no way to distinguish between EOF and syntax error */
		FUNC1(EFTYPE);
	}
	/* NOTREACHED */
}