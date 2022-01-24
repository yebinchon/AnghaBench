#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  vtable; } ;
struct vectx {int vec_fd; char const* vec_path; char* vec_want; int vec_status; size_t vec_hashsz; TYPE_1__ vec_ctx; TYPE_2__* vec_md; scalar_t__ vec_off; int /*<<< orphan*/  vec_size; } ;
struct stat {int /*<<< orphan*/  st_size; int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  off_t ;
struct TYPE_7__ {int /*<<< orphan*/  (* init ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int VE_FINGERPRINT_IGNORE ; 
 int VE_FINGERPRINT_NONE ; 
 int VE_FINGERPRINT_UNKNOWN ; 
 size_t br_sha1_SIZE ; 
 TYPE_2__ br_sha1_vtable ; 
 size_t br_sha256_SIZE ; 
 TYPE_2__ br_sha256_vtable ; 
 size_t br_sha384_SIZE ; 
 TYPE_2__ br_sha384_vtable ; 
 size_t br_sha512_SIZE ; 
 TYPE_2__ br_sha512_vtable ; 
 char* FUNC1 (int,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct vectx*) ; 
 scalar_t__ FUNC3 (int,struct stat*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vectx* FUNC5 (int) ; 
 scalar_t__ FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (struct vectx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct vectx *
FUNC10(int fd, const char *path, off_t off, struct stat *stp, int *error)
{
	struct vectx *ctx;
	struct stat st;
	size_t hashsz;
	char *cp;

	if (!stp) {
		if (FUNC3(fd, &st) == 0)
			stp = &st;
	}

	/* we *should* only get called for files */
	if (stp && !FUNC0(stp->st_mode)) {
		*error = 0;
		return (NULL);
	}

	ctx = FUNC5(sizeof(struct vectx));
	if (!ctx)
		goto enomem;
	ctx->vec_fd = fd;
	ctx->vec_path = path;
	ctx->vec_size = stp->st_size;
	ctx->vec_off = 0;
	ctx->vec_want = NULL;
	ctx->vec_status = 0;
	hashsz = 0;

	cp = FUNC1(fd, path);
	if (!cp) {
		ctx->vec_status = VE_FINGERPRINT_NONE;
		FUNC8("%s: no entry", path);
	} else {
		if (FUNC6(cp, "no_hash", 7) == 0) {
			ctx->vec_status = VE_FINGERPRINT_IGNORE;
			hashsz = 0;
		} else if (FUNC6(cp, "sha256=", 7) == 0) {
			ctx->vec_md = &br_sha256_vtable;
			hashsz = br_sha256_SIZE;
			cp += 7;
#ifdef VE_SHA1_SUPPORT
		} else if (strncmp(cp, "sha1=", 5) == 0) {
			ctx->vec_md = &br_sha1_vtable;
			hashsz = br_sha1_SIZE;
			cp += 5;
#endif
#ifdef VE_SHA384_SUPPORT
		} else if (strncmp(cp, "sha384=", 7) == 0) {
		    ctx->vec_md = &br_sha384_vtable;
		    hashsz = br_sha384_SIZE;
		    cp += 7;
#endif
#ifdef VE_SHA512_SUPPORT
		} else if (strncmp(cp, "sha512=", 7) == 0) {
		    ctx->vec_md = &br_sha512_vtable;
		    hashsz = br_sha512_SIZE;
		    cp += 7;
#endif
		} else {
			ctx->vec_status = VE_FINGERPRINT_UNKNOWN;
			FUNC8("%s: no supported fingerprint", path);
		}
	}
	*error = ctx->vec_status;
	ctx->vec_hashsz = hashsz;
	ctx->vec_want = cp;
	if (hashsz > 0) {
		ctx->vec_md->init(&ctx->vec_ctx.vtable);

		if (off > 0) {
			FUNC4(fd, 0, SEEK_SET);
			FUNC9(ctx, off, SEEK_SET);
		}
	}
	return (ctx);

enomem:					/* unlikely */
	*error = ENOMEM;
	FUNC2(ctx);
	return (NULL);
}