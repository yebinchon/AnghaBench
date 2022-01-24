#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uintmax_t ;
struct passwd {char* pw_name; } ;
struct group {char* gr_name; } ;
typedef  int /*<<< orphan*/  intmax_t ;
struct TYPE_3__ {char* name; int st_gid; int st_mode; int st_uid; char* md5digest; char* sha1digest; char* rmd160digest; char* sha256digest; char* sha384digest; char* sha512digest; int /*<<< orphan*/  st_flags; scalar_t__ st_size; scalar_t__ st_nlink; int /*<<< orphan*/  cksum; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ NODE ;

/* Variables and functions */
 int F_CKSUM ; 
 int F_FLAGS ; 
 int F_GID ; 
 int F_GNAME ; 
 int F_MD5 ; 
 int F_MODE ; 
 int F_NLINK ; 
 int F_RMD160 ; 
 int F_SHA1 ; 
 int F_SHA256 ; 
 int F_SHA384 ; 
 int F_SHA512 ; 
 int F_SIZE ; 
 int F_UID ; 
 int F_UNAME ; 
 char* MD5KEY ; 
 char* RMD160KEY ; 
 char* SHA1KEY ; 
 char* SHA256KEY ; 
 char* SHA384KEY ; 
 char* SHA512KEY ; 
 char* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct group* FUNC1 (int) ; 
 struct passwd* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static void
FUNC6(NODE *n, int f, char const *path)
{
	struct group *gr;
	struct passwd *pw;

	FUNC5("%s%s %s", path, n->name, FUNC3(FUNC4(n->type)));
	if (f & F_CKSUM)
		FUNC5(" cksum=%lu", n->cksum);
	if (f & F_GID)
		FUNC5(" gid=%d", n->st_gid);
	if (f & F_GNAME) {
		gr = FUNC1(n->st_gid);
		if (gr == NULL)
			FUNC5(" gid=%d", n->st_gid);
		else
			FUNC5(" gname=%s", gr->gr_name);
	}
	if (f & F_MODE)
		FUNC5(" mode=%o", n->st_mode);
	if (f & F_NLINK)
		FUNC5(" nlink=%ju", (uintmax_t)n->st_nlink);
	if (f & F_SIZE)
		FUNC5(" size=%jd", (intmax_t)n->st_size);
	if (f & F_UID)
		FUNC5(" uid=%d", n->st_uid);
	if (f & F_UNAME) {
		pw = FUNC2(n->st_uid);
		if (pw == NULL)
			FUNC5(" uid=%d", n->st_uid);
		else
			FUNC5(" uname=%s", pw->pw_name);
	}
	if (f & F_MD5)
		FUNC5(" %s=%s", MD5KEY, n->md5digest);
	if (f & F_SHA1)
		FUNC5(" %s=%s", SHA1KEY, n->sha1digest);
	if (f & F_RMD160)
		FUNC5(" %s=%s", RMD160KEY, n->rmd160digest);
	if (f & F_SHA256)
		FUNC5(" %s=%s", SHA256KEY, n->sha256digest);
	if (f & F_SHA384)
		FUNC5(" %s=%s", SHA384KEY, n->sha384digest);
	if (f & F_SHA512)
		FUNC5(" %s=%s", SHA512KEY, n->sha512digest);
	if (f & F_FLAGS)
		FUNC5(" flags=%s", FUNC0(n->st_flags, "none"));
	FUNC5("\n");
}