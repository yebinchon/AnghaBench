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
typedef  int /*<<< orphan*/  uintmax_t ;
struct afile {int fnum; int len; char prefix; char postfix; char* fname; } ;

/* Variables and functions */
 int UFS_ROOTINO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ vflag ; 

__attribute__((used)) static void
FUNC3(struct afile *list, int nentry)
{
	struct afile *fp, *endlist;
	int width, bigino, haveprefix, havepostfix;
	int i, j, w, precision, columns, lines;

	width = 0;
	haveprefix = 0;
	havepostfix = 0;
	bigino = UFS_ROOTINO;
	endlist = &list[nentry];
	for (fp = &list[0]; fp < endlist; fp++) {
		if (bigino < fp->fnum)
			bigino = fp->fnum;
		if (width < fp->len)
			width = fp->len;
		if (fp->prefix != ' ')
			haveprefix = 1;
		if (fp->postfix != ' ')
			havepostfix = 1;
	}
	if (haveprefix)
		width++;
	if (havepostfix)
		width++;
	if (vflag) {
		for (precision = 0, i = bigino; i > 0; i /= 10)
			precision++;
		width += precision + 1;
	}
	width++;
	columns = 81 / width;
	if (columns == 0)
		columns = 1;
	lines = FUNC1(nentry, columns);
	for (i = 0; i < lines; i++) {
		for (j = 0; j < columns; j++) {
			fp = &list[j * lines + i];
			if (vflag) {
				FUNC0(stderr, "%*jd ",
				    precision, (uintmax_t)fp->fnum);
				fp->len += precision + 1;
			}
			if (haveprefix) {
				FUNC2(fp->prefix, stderr);
				fp->len++;
			}
			FUNC0(stderr, "%s", fp->fname);
			if (havepostfix) {
				FUNC2(fp->postfix, stderr);
				fp->len++;
			}
			if (fp + lines >= endlist) {
				FUNC0(stderr, "\n");
				break;
			}
			for (w = fp->len; w < width; w++)
				FUNC2(' ', stderr);
		}
	}
}