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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  va_list ;
typedef  int /*<<< orphan*/  locale_t ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_7__ {unsigned char* _base; int _size; } ;
struct TYPE_8__ {int _flags; unsigned char* _p; int _w; scalar_t__ _lbfsize; TYPE_1__ _bf; int /*<<< orphan*/  _mbstate; int /*<<< orphan*/  _orientation; int /*<<< orphan*/  _write; int /*<<< orphan*/  _cookie; int /*<<< orphan*/  _file; } ;
typedef  TYPE_2__ FILE ;

/* Variables and functions */
 int BUFSIZ ; 
 int EOF ; 
 int WEOF ; 
 int __SERR ; 
 int __SNBF ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC3(FILE *fp, locale_t locale, const wchar_t *fmt, va_list ap)
{
	int ret;
	FILE fake;
	unsigned char buf[BUFSIZ];

	/* XXX This is probably not needed. */
	if (FUNC2(fp) != 0)
		return (EOF);

	/* copy the important variables */
	fake._flags = fp->_flags & ~__SNBF;
	fake._file = fp->_file;
	fake._cookie = fp->_cookie;
	fake._write = fp->_write;
	fake._orientation = fp->_orientation;
	fake._mbstate = fp->_mbstate;

	/* set up the buffer */
	fake._bf._base = fake._p = buf;
	fake._bf._size = fake._w = sizeof(buf);
	fake._lbfsize = 0;	/* not actually used, but Just In Case */

	/* do the work, then copy any error status */
	ret = FUNC1(&fake, locale, fmt, ap);
	if (ret >= 0 && FUNC0(&fake))
		ret = WEOF;
	if (fake._flags & __SERR)
		fp->_flags |= __SERR;
	return (ret);
}