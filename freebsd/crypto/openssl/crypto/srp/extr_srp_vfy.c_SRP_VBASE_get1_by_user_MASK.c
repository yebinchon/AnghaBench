#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* seed_key; int /*<<< orphan*/ * default_N; int /*<<< orphan*/ * default_g; } ;
typedef  int /*<<< orphan*/  SRP_user_pwd ;
typedef  TYPE_1__ SRP_VBASE ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (unsigned char*,int) ; 
 int SHA_DIGEST_LENGTH ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 

SRP_user_pwd *FUNC16(SRP_VBASE *vb, char *username)
{
    SRP_user_pwd *user;
    unsigned char digv[SHA_DIGEST_LENGTH];
    unsigned char digs[SHA_DIGEST_LENGTH];
    EVP_MD_CTX *ctxt = NULL;

    if (vb == NULL)
        return NULL;

    if ((user = FUNC13(vb, username)) != NULL)
        return FUNC14(user);

    if ((vb->seed_key == NULL) ||
        (vb->default_g == NULL) || (vb->default_N == NULL))
        return NULL;

/* if the user is unknown we set parameters as well if we have a seed_key */

    if ((user = FUNC9()) == NULL)
        return NULL;

    FUNC10(user, vb->default_g, vb->default_N);

    if (!FUNC11(user, username, NULL))
        goto err;

    if (FUNC7(digv, SHA_DIGEST_LENGTH) <= 0)
        goto err;
    ctxt = FUNC5();
    if (ctxt == NULL
        || !FUNC2(ctxt, FUNC6(), NULL)
        || !FUNC3(ctxt, vb->seed_key, FUNC15(vb->seed_key))
        || !FUNC3(ctxt, username, FUNC15(username))
        || !FUNC1(ctxt, digs, NULL))
        goto err;
    FUNC4(ctxt);
    ctxt = NULL;
    if (FUNC12(user,
                               FUNC0(digs, SHA_DIGEST_LENGTH, NULL),
                               FUNC0(digv, SHA_DIGEST_LENGTH, NULL)))
        return user;

 err:
    FUNC4(ctxt);
    FUNC8(user);
    return NULL;
}