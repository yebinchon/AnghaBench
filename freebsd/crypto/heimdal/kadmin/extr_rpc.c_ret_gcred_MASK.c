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
struct gcred {int /*<<< orphan*/  handle; int /*<<< orphan*/  service; int /*<<< orphan*/  seq_num; int /*<<< orphan*/  proc; int /*<<< orphan*/  version; } ;
typedef  int /*<<< orphan*/  krb5_storage ;
typedef  int /*<<< orphan*/  krb5_data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct gcred*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(krb5_data *data, struct gcred *gcred)
{
    krb5_storage *sp;

    FUNC5(gcred, 0, sizeof(*gcred));

    sp = FUNC4(data);
    FUNC1(sp != NULL);

    FUNC0(FUNC2(sp, &gcred->version));
    FUNC0(FUNC2(sp, &gcred->proc));
    FUNC0(FUNC2(sp, &gcred->seq_num));
    FUNC0(FUNC2(sp, &gcred->service));
    FUNC0(FUNC6(sp, &gcred->handle));

    FUNC3(sp);

    return 0;
}