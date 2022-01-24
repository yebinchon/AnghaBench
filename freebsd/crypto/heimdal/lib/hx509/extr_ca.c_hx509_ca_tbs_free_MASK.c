#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* hx509_ca_tbs ;
struct TYPE_5__ {int /*<<< orphan*/  subject; int /*<<< orphan*/  issuerUniqueID; int /*<<< orphan*/  subjectUniqueID; int /*<<< orphan*/  crldp; int /*<<< orphan*/  serial; int /*<<< orphan*/  eku; int /*<<< orphan*/  san; int /*<<< orphan*/  spki; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void
FUNC9(hx509_ca_tbs *tbs)
{
    if (tbs == NULL || *tbs == NULL)
	return;

    FUNC6(&(*tbs)->spki);
    FUNC5(&(*tbs)->san);
    FUNC4(&(*tbs)->eku);
    FUNC1(&(*tbs)->serial);
    FUNC3(&(*tbs)->crldp);
    FUNC0(&(*tbs)->subjectUniqueID);
    FUNC0(&(*tbs)->issuerUniqueID);
    FUNC7(&(*tbs)->subject);

    FUNC8(*tbs, 0, sizeof(**tbs));
    FUNC2(*tbs);
    *tbs = NULL;
}