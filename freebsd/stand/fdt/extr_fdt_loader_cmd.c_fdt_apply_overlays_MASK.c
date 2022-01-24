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
struct preloaded_file {size_t f_size; char* f_name; int /*<<< orphan*/  f_addr; struct preloaded_file* f_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*,size_t) ; 
 int FUNC1 (void*,void*) ; 
 int FUNC2 (void*,void*,size_t) ; 
 int FUNC3 (void*,void*) ; 
 int fdt_overlays_applied ; 
 char* FUNC4 (int) ; 
 void* fdtp ; 
 size_t fdtp_size ; 
 struct preloaded_file* FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 void* FUNC7 (size_t) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 

void
FUNC9()
{
	struct preloaded_file *fp;
	size_t max_overlay_size, next_fdtp_size;
	size_t current_fdtp_size;
	void *current_fdtp;
	void *next_fdtp;
	void *overlay;
	int rv;

	if ((fdtp == NULL) || (fdtp_size == 0))
		return;

	if (fdt_overlays_applied)
		return;

	max_overlay_size = 0;
	for (fp = FUNC5(NULL, "dtbo"); fp != NULL; fp = fp->f_next) {
		if (max_overlay_size < fp->f_size)
			max_overlay_size = fp->f_size;
	}

	/* Nothing to apply */
	if (max_overlay_size == 0)
		return;

	overlay = FUNC7(max_overlay_size);
	if (overlay == NULL) {
		FUNC8("failed to allocate memory for DTB blob with overlays\n");
		return;
	}
	current_fdtp = fdtp;
	current_fdtp_size = fdtp_size;
	for (fp = FUNC5(NULL, "dtbo"); fp != NULL; fp = fp->f_next) {
		FUNC0(fp->f_addr, overlay, fp->f_size);
		/* Check compatible first to avoid unnecessary allocation */
		rv = FUNC1(current_fdtp, overlay);
		if (rv != 0) {
			FUNC8("DTB overlay '%s' not compatible\n", fp->f_name);
			continue;
		}
		FUNC8("applying DTB overlay '%s'\n", fp->f_name);
		next_fdtp_size = current_fdtp_size + fp->f_size;
		next_fdtp = FUNC7(next_fdtp_size);
		if (next_fdtp == NULL) {
			/*
			 * Output warning, then move on to applying other
			 * overlays in case this one is simply too large.
			 */
			FUNC8("failed to allocate memory for overlay base\n");
			continue;
		}
		rv = FUNC2(current_fdtp, next_fdtp, next_fdtp_size);
		if (rv != 0) {
			FUNC6(next_fdtp);
			FUNC8("failed to open base dtb into overlay base\n");
			continue;
		}
		/* Both overlay and next_fdtp may be modified in place */
		rv = FUNC3(next_fdtp, overlay);
		if (rv == 0) {
			/* Rotate next -> current */
			if (current_fdtp != fdtp)
				FUNC6(current_fdtp);
			current_fdtp = next_fdtp;
			current_fdtp_size = next_fdtp_size;
		} else {
			/*
			 * Assume here that the base we tried to apply on is
			 * either trashed or in an inconsistent state. Trying to
			 * load it might work, but it's better to discard it and
			 * play it safe. */
			FUNC6(next_fdtp);
			FUNC8("failed to apply overlay: %s\n",
			    FUNC4(rv));
		}
	}
	/* We could have failed to apply all overlays; then we do nothing */
	if (current_fdtp != fdtp) {
		FUNC6(fdtp);
		fdtp = current_fdtp;
		fdtp_size = current_fdtp_size;
	}
	FUNC6(overlay);
	fdt_overlays_applied = 1;
}