#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {unsigned int len; int /*<<< orphan*/ ** val; } ;
struct TYPE_6__ {TYPE_1__ name_string; } ;
struct TYPE_7__ {int /*<<< orphan*/  cusec; int /*<<< orphan*/  ctime; TYPE_2__ cname; int /*<<< orphan*/ * crealm; } ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;
typedef  TYPE_3__ Authenticator ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(Authenticator *auth, void *data)
{
    EVP_MD_CTX *m = FUNC3();
    unsigned i;

    FUNC1(m, FUNC5(), NULL);

    FUNC2(m, auth->crealm, FUNC6(auth->crealm));
    for(i = 0; i < auth->cname.name_string.len; i++)
	FUNC2(m, auth->cname.name_string.val[i],
		   FUNC6(auth->cname.name_string.val[i]));
    FUNC2(m, &auth->ctime, sizeof(auth->ctime));
    FUNC2(m, &auth->cusec, sizeof(auth->cusec));

    FUNC0(m, data, NULL);
    FUNC4(m);
}