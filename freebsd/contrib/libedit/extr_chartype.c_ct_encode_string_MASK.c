#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int ssize_t ;
struct TYPE_4__ {char* cbuff; size_t csize; } ;
typedef  TYPE_1__ ct_buffer_t ;

/* Variables and functions */
 scalar_t__ CT_BUFSIZ ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (TYPE_1__*,scalar_t__) ; 
 int FUNC2 (char*,size_t,int /*<<< orphan*/  const) ; 

char *
FUNC3(const wchar_t *s, ct_buffer_t *conv)
{
	char *dst;
	ssize_t used;

	if (!s)
		return NULL;

	dst = conv->cbuff;
	for (;;) {
		used = (ssize_t)(dst - conv->cbuff);
		if ((conv->csize - (size_t)used) < 5) {
			if (FUNC1(conv,
			    conv->csize + CT_BUFSIZ) == -1)
				return NULL;
			dst = conv->cbuff + used;
		}
		if (!*s)
			break;
		used = FUNC2(dst, (size_t)5, *s);
		if (used == -1) /* failed to encode, need more buffer space */
			FUNC0();
		++s;
		dst += used;
	}
	*dst = '\0';
	return conv->cbuff;
}