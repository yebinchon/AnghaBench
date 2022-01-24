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
struct TYPE_2__ {size_t high; } ;
struct bufferevent {int /*<<< orphan*/  input; int /*<<< orphan*/  output; TYPE_1__ wm_read; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC2 (struct bufferevent*) ; 
 int /*<<< orphan*/  EV_READ ; 
 int /*<<< orphan*/  EV_WRITE ; 
 int /*<<< orphan*/  FUNC3 (struct bufferevent*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 size_t FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC9(struct bufferevent *src, struct bufferevent *dst,
    int ignore_wm)
{
	size_t dst_size;
	size_t n;

	FUNC8(src->output, 1);
	FUNC8(dst->input, 0);

	if (dst->wm_read.high) {
		dst_size = FUNC6(dst->input);
		if (dst_size < dst->wm_read.high) {
			n = dst->wm_read.high - dst_size;
			FUNC7(src->output, dst->input, n);
		} else {
			if (!ignore_wm)
				goto done;
			n = FUNC6(src->output);
			FUNC4(dst->input, src->output);
		}
	} else {
		n = FUNC6(src->output);
		FUNC4(dst->input, src->output);
	}

	if (n) {
		FUNC1(dst);

		if (FUNC6(dst->output))
			FUNC2(dst);
		else
			FUNC0(dst);
	}

	FUNC3(dst, EV_READ, 0);
	FUNC3(src, EV_WRITE, 0);
done:
	FUNC5(src->output, 1);
	FUNC5(dst->input, 0);
}