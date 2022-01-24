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
struct _buf {int /*<<< orphan*/ * ptr; scalar_t__ mounted; } ;

/* Variables and functions */
 int /*<<< orphan*/  KM_SLEEP ; 
 struct _buf* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct _buf*,int) ; 
 int /*<<< orphan*/ * FUNC2 (char const*) ; 
 int /*<<< orphan*/ * FUNC3 (char const*) ; 
 scalar_t__ FUNC4 () ; 

struct _buf *
FUNC5(const char *file)
{
	struct _buf *out;

	out = FUNC0(sizeof(*out), KM_SLEEP);
	out->mounted = FUNC4();
	/*
	 * If root is already mounted we read file using file system,
	 * if not, we use loader.
	 */
	if (out->mounted)
		out->ptr = FUNC3(file);
	else
		out->ptr = FUNC2(file);
	if (out->ptr == NULL) {
		FUNC1(out, sizeof(*out));
		return ((struct _buf *)-1);
	}
	return (out);
}