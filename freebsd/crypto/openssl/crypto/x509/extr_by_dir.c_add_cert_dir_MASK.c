#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/ * dirs; } ;
struct TYPE_8__ {int dir_type; int /*<<< orphan*/ * hashes; int /*<<< orphan*/ * dir; } ;
typedef  TYPE_1__ BY_DIR_ENTRY ;
typedef  TYPE_2__ BY_DIR ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 char const LIST_SEPARATOR_CHAR ; 
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,size_t) ; 
 int /*<<< orphan*/  X509_F_ADD_CERT_DIR ; 
 int /*<<< orphan*/  X509_R_INVALID_DIRECTORY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  by_dir_hash_cmp ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 size_t FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,char const*,size_t) ; 

__attribute__((used)) static int FUNC11(BY_DIR *ctx, const char *dir, int type)
{
    int j;
    size_t len;
    const char *s, *ss, *p;

    if (dir == NULL || !*dir) {
        FUNC2(X509_F_ADD_CERT_DIR, X509_R_INVALID_DIRECTORY);
        return 0;
    }

    s = dir;
    p = s;
    do {
        if ((*p == LIST_SEPARATOR_CHAR) || (*p == '\0')) {
            BY_DIR_ENTRY *ent;

            ss = s;
            s = p + 1;
            len = p - ss;
            if (len == 0)
                continue;
            for (j = 0; j < FUNC5(ctx->dirs); j++) {
                ent = FUNC7(ctx->dirs, j);
                if (FUNC9(ent->dir) == len && FUNC10(ent->dir, ss, len) == 0)
                    break;
            }
            if (j < FUNC5(ctx->dirs))
                continue;
            if (ctx->dirs == NULL) {
                ctx->dirs = FUNC4();
                if (!ctx->dirs) {
                    FUNC2(X509_F_ADD_CERT_DIR, ERR_R_MALLOC_FAILURE);
                    return 0;
                }
            }
            ent = FUNC0(sizeof(*ent));
            if (ent == NULL) {
                FUNC2(X509_F_ADD_CERT_DIR, ERR_R_MALLOC_FAILURE);
                return 0;
            }
            ent->dir_type = type;
            ent->hashes = FUNC8(by_dir_hash_cmp);
            ent->dir = FUNC1(ss, len);
            if (ent->dir == NULL || ent->hashes == NULL) {
                FUNC3(ent);
                return 0;
            }
            if (!FUNC6(ctx->dirs, ent)) {
                FUNC3(ent);
                FUNC2(X509_F_ADD_CERT_DIR, ERR_R_MALLOC_FAILURE);
                return 0;
            }
        }
    } while (*p++ != '\0');
    return 1;
}