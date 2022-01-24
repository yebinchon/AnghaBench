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
typedef  char const u_char ;
struct gctl_req {int dummy; } ;
struct g_bde_softc {char const* sha2; } ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int SHA512_DIGEST_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct gctl_req* FUNC4 () ; 
 char* FUNC5 (struct gctl_req*) ; 
 int /*<<< orphan*/  FUNC6 (struct gctl_req*,char*,int,char const*) ; 
 int FUNC7 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,char const*,int) ; 

__attribute__((used)) static void
FUNC9(const struct g_bde_softc *sc, const char *dest, const char *lfile)
{
	int ffd;
	u_char buf[16];
	struct gctl_req *r;
	const char *errstr;

	r = FUNC4();
	FUNC6(r, "verb", -1, "create geom");
	FUNC6(r, "class", -1, "BDE");
	FUNC6(r, "provider", -1, dest);
	FUNC6(r, "pass", SHA512_DIGEST_LENGTH, sc->sha2);
	if (lfile != NULL) {
		ffd = FUNC7(lfile, O_RDONLY, 0);
		if (ffd < 0)
			FUNC1(1, "%s", lfile);
		FUNC8(ffd, buf, 16);
		FUNC6(r, "key", 16, buf);
		FUNC0(ffd);
	}
	errstr = FUNC5(r);
	if (errstr != NULL)
		FUNC2(1, "Attach to %s failed: %s", dest, errstr);

	FUNC3 (0);
}