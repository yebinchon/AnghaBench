#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct tm {int tm_year; int /*<<< orphan*/  tm_sec; int /*<<< orphan*/  tm_min; int /*<<< orphan*/  tm_hour; int /*<<< orphan*/  tm_mday; scalar_t__ tm_mon; } ;
struct TYPE_7__ {int type; void* length; scalar_t__ data; } ;
typedef  TYPE_1__ ASN1_TIME ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,size_t const) ; 
 void* FUNC3 (char*,size_t const,char*,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int V_ASN1_GENERALIZEDTIME ; 
 int V_ASN1_UNDEF ; 
 int V_ASN1_UTCTIME ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,void*) ; 
 scalar_t__ FUNC5 (int) ; 

ASN1_TIME *FUNC6(ASN1_TIME *s, struct tm *ts, int type)
{
    char* p;
    ASN1_TIME *tmps = NULL;
    const size_t len = 20;

    if (type == V_ASN1_UNDEF) {
        if (FUNC5(ts->tm_year))
            type = V_ASN1_UTCTIME;
        else
            type = V_ASN1_GENERALIZEDTIME;
    } else if (type == V_ASN1_UTCTIME) {
        if (!FUNC5(ts->tm_year))
            goto err;
    } else if (type != V_ASN1_GENERALIZEDTIME) {
        goto err;
    }

    if (s == NULL)
        tmps = FUNC1();
    else
        tmps = s;
    if (tmps == NULL)
        return NULL;

    if (!FUNC2(tmps, NULL, len))
        goto err;

    tmps->type = type;
    p = (char*)tmps->data;

    if (type == V_ASN1_GENERALIZEDTIME)
        tmps->length = FUNC3(p, len, "%04d%02d%02d%02d%02d%02dZ",
                                    ts->tm_year + 1900, ts->tm_mon + 1,
                                    ts->tm_mday, ts->tm_hour, ts->tm_min,
                                    ts->tm_sec);
    else
        tmps->length = FUNC3(p, len, "%02d%02d%02d%02d%02d%02dZ",
                                    ts->tm_year % 100, ts->tm_mon + 1,
                                    ts->tm_mday, ts->tm_hour, ts->tm_min,
                                    ts->tm_sec);

#ifdef CHARSET_EBCDIC
    ebcdic2ascii(tmps->data, tmps->data, tmps->length);
#endif
    return tmps;
 err:
    if (tmps != s)
        FUNC0(tmps);
    return NULL;
}