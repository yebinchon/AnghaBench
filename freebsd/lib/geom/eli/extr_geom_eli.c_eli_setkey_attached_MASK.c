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
struct gctl_req {int dummy; } ;
struct g_eli_metadata {int md_iterations; } ;
typedef  int /*<<< orphan*/  key ;
typedef  int intmax_t ;

/* Variables and functions */
 int G_ELI_USERKEYLEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (struct gctl_req*,struct g_eli_metadata*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int) ; 
 int FUNC3 (struct gctl_req*,char*,int,int*) ; 
 int FUNC4 (struct gctl_req*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct gctl_req*) ; 
 int /*<<< orphan*/  FUNC6 (struct gctl_req*,char*,int,unsigned char*) ; 

__attribute__((used)) static void
FUNC7(struct gctl_req *req, struct g_eli_metadata *md)
{
	unsigned char key[G_ELI_USERKEYLEN];
	intmax_t val, old = 0;
	int error;

	val = FUNC4(req, "iterations");
	/* Check if iterations number should be changed. */
	if (val != -1)
		md->md_iterations = val;
	else
		old = md->md_iterations;

	/* Generate key for Master Key encryption. */
	if (FUNC1(req, md, key, true) == NULL) {
		FUNC2(key, sizeof(key));
		return;
	}
	/*
	 * If number of iterations has changed, but wasn't given as a
	 * command-line argument, update the request.
	 */
	if (val == -1 && md->md_iterations != old) {
		error = FUNC3(req, "iterations", sizeof(intmax_t),
		    &md->md_iterations);
		FUNC0(error == 0);
	}

	FUNC6(req, "key", sizeof(key), key);
	FUNC5(req);
	FUNC2(key, sizeof(key));
}