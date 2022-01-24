#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  time_t ;
struct tm {int tm_year; int tm_mon; int tm_mday; int /*<<< orphan*/  tm_sec; int /*<<< orphan*/  tm_min; int /*<<< orphan*/  tm_hour; } ;
struct TYPE_3__ {size_t length; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ heim_octet_string ;

/* Variables and functions */
 int ASN1_BAD_TIMEFORMAT ; 
 int ENOMEM ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,struct tm*) ; 
 int /*<<< orphan*/ * FUNC1 (size_t const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t const,char*,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC3 (time_t t, heim_octet_string *s, int gtimep)
{
     struct tm tm;
     const size_t len = gtimep ? 15 : 13;

     s->data = FUNC1(len + 1);
     if (s->data == NULL)
	 return ENOMEM;
     s->length = len;
     if (FUNC0(t, &tm) == NULL)
	 return ASN1_BAD_TIMEFORMAT;
     if (gtimep)
	 FUNC2 (s->data, len + 1, "%04d%02d%02d%02d%02d%02dZ",
		   tm.tm_year + 1900, tm.tm_mon + 1, tm.tm_mday,
		   tm.tm_hour, tm.tm_min, tm.tm_sec);
     else
	 FUNC2 (s->data, len + 1, "%02d%02d%02d%02d%02d%02dZ",
		   tm.tm_year % 100, tm.tm_mon + 1, tm.tm_mday,
		   tm.tm_hour, tm.tm_min, tm.tm_sec);

     return 0;
}