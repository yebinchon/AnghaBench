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
struct hmac_ctx {int dummy; } ;
struct gctl_req {int dummy; } ;
struct g_eli_metadata {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct gctl_req*,int,char*,struct hmac_ctx*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct gctl_req*,struct g_eli_metadata*,int,struct hmac_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (struct hmac_ctx*,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hmac_ctx*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gctl_req*,char*) ; 
 int FUNC5 (struct gctl_req*,char*) ; 

__attribute__((used)) static unsigned char *
FUNC6(struct gctl_req *req, struct g_eli_metadata *md, unsigned char *key,
    bool new)
{
	struct hmac_ctx ctx;
	bool nopassphrase;
	int nfiles;

	nopassphrase =
	    FUNC5(req, new ? "nonewpassphrase" : "nopassphrase");

	FUNC3(&ctx, NULL, 0);

	nfiles = FUNC0(req, new, "keyfile", &ctx, NULL, 0);
	if (nfiles == -1)
		return (NULL);
	else if (nfiles == 0 && nopassphrase) {
		FUNC4(req, "No key components given.");
		return (NULL);
	}

	if (FUNC1(req, md, new, &ctx) == -1)
		return (NULL);

	FUNC2(&ctx, key, 0);

	return (key);
}