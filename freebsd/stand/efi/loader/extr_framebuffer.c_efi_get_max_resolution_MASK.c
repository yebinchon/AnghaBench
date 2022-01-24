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
struct named_resolution {int width; int height; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct named_resolution*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 int FUNC3 (struct named_resolution*) ; 
 struct named_resolution* resolutions ; 
 char* FUNC4 (char*,char) ; 
 char* FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(int *width, int *height)
{
	struct named_resolution *res;
	char *maxres;
	char *height_start, *width_start;
	int idx;

	*width = *height = 0;
	maxres = FUNC2("efi_max_resolution");
	/* No max_resolution set? Bail out; choose highest resolution */
	if (maxres == NULL)
		return;
	/* See if it matches one of our known resolutions */
	for (idx = 0; idx < FUNC3(resolutions); ++idx) {
		res = &resolutions[idx];
		if (FUNC0(res, maxres)) {
			*width = res->width;
			*height = res->height;
			return;
		}
	}
	/* Not a known resolution, try to parse it; make a copy we can modify */
	maxres = FUNC5(maxres);
	if (maxres == NULL)
		return;
	height_start = FUNC4(maxres, 'x');
	if (height_start == NULL) {
		FUNC1(maxres);
		return;
	}
	width_start = maxres;
	*height_start++ = 0;
	/* Errors from this will effectively mean "no max" */
	*width = (int)FUNC6(width_start, NULL, 0);
	*height = (int)FUNC6(height_start, NULL, 0);
	FUNC1(maxres);
}