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
typedef  int /*<<< orphan*/  ASN1_UTCTIME ;

/* Variables and functions */
 struct tm* FUNC0 (int /*<<< orphan*/ *,struct tm*) ; 
 int /*<<< orphan*/  FUNC1 (struct tm*,int,long) ; 
 int /*<<< orphan*/  V_ASN1_UTCTIME ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,struct tm*,int /*<<< orphan*/ ) ; 

ASN1_UTCTIME *FUNC3(ASN1_UTCTIME *s, time_t t,
                               int offset_day, long offset_sec)
{
    struct tm *ts;
    struct tm data;

    ts = FUNC0(&t, &data);
    if (ts == NULL)
        return NULL;

    if (offset_day || offset_sec) {
        if (!FUNC1(ts, offset_day, offset_sec))
            return NULL;
    }

    return FUNC2(s, ts, V_ASN1_UTCTIME);
}