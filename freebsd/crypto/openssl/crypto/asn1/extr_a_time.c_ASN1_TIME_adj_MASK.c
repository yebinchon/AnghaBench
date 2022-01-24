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
typedef  int /*<<< orphan*/  time_t ;
struct tm {int dummy; } ;
typedef  int /*<<< orphan*/  ASN1_TIME ;

/* Variables and functions */
 int /*<<< orphan*/  ASN1_F_ASN1_TIME_ADJ ; 
 int /*<<< orphan*/  ASN1_R_ERROR_GETTING_TIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tm* FUNC1 (int /*<<< orphan*/ *,struct tm*) ; 
 int /*<<< orphan*/  FUNC2 (struct tm*,int,long) ; 
 int /*<<< orphan*/  V_ASN1_UNDEF ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,struct tm*,int /*<<< orphan*/ ) ; 

ASN1_TIME *FUNC4(ASN1_TIME *s, time_t t,
                         int offset_day, long offset_sec)
{
    struct tm *ts;
    struct tm data;

    ts = FUNC1(&t, &data);
    if (ts == NULL) {
        FUNC0(ASN1_F_ASN1_TIME_ADJ, ASN1_R_ERROR_GETTING_TIME);
        return NULL;
    }
    if (offset_day || offset_sec) {
        if (!FUNC2(ts, offset_day, offset_sec))
            return NULL;
    }
    return FUNC3(s, ts, V_ASN1_UNDEF);
}