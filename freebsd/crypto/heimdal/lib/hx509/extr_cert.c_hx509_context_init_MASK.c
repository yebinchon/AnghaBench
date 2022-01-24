#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* hx509_context ;
struct TYPE_12__ {int /*<<< orphan*/  default_trust_anchors; int /*<<< orphan*/  et_list; int /*<<< orphan*/  ocsp_time_diff; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HX509_DEFAULT_ANCHORS ; 
 int /*<<< orphan*/  HX509_DEFAULT_OCSP_TIME_DIFF ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 TYPE_1__* FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

int
FUNC13(hx509_context *context)
{
    *context = FUNC9(1, sizeof(**context));
    if (*context == NULL)
	return ENOMEM;

    FUNC6(*context);
    FUNC5(*context);
    FUNC3(*context);
    FUNC8(*context);
    FUNC7(*context);
    FUNC2(*context);
    FUNC4(*context);

    FUNC0();
    FUNC1();

    (*context)->ocsp_time_diff = HX509_DEFAULT_OCSP_TIME_DIFF;

    FUNC12(&(*context)->et_list);
    FUNC11(&(*context)->et_list);

#ifdef HX509_DEFAULT_ANCHORS
    (void)hx509_certs_init(*context, HX509_DEFAULT_ANCHORS, 0,
			   NULL, &(*context)->default_trust_anchors);
#endif

    return 0;
}