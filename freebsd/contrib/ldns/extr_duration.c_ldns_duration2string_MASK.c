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
struct TYPE_3__ {scalar_t__ years; scalar_t__ months; scalar_t__ weeks; scalar_t__ days; scalar_t__ hours; scalar_t__ minutes; scalar_t__ seconds; } ;
typedef  TYPE_1__ ldns_duration_type ;

/* Variables and functions */
 scalar_t__ FUNC0 (size_t,int) ; 
 size_t FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t,char*,unsigned int) ; 
 char* FUNC4 (char*,char*,size_t) ; 

char*
FUNC5(const ldns_duration_type* duration)
{
    char* str = NULL, *num = NULL;
    size_t count = 2;
    int T = 0;

    if (!duration) {
        return NULL;
    }

    if (duration->years > 0) {
        count = count + 1 + FUNC1(duration->years);
    }
    if (duration->months > 0) {
        count = count + 1 + FUNC1(duration->months);
    }
    if (duration->weeks > 0) {
        count = count + 1 + FUNC1(duration->weeks);
    }
    if (duration->days > 0) {
        count = count + 1 + FUNC1(duration->days);
    }
    if (duration->hours > 0) {
        count = count + 1 + FUNC1(duration->hours);
        T = 1;
    }
    if (duration->minutes > 0) {
        count = count + 1 + FUNC1(duration->minutes);
        T = 1;
    }
    if (duration->seconds > 0) {
        count = count + 1 + FUNC1(duration->seconds);
        T = 1;
    }
    if (T) {
        count++;
    }

    str = (char*) FUNC0(count, sizeof(char));
    str[0] = 'P';
    str[1] = '\0';

    if (duration->years > 0) {
        count = FUNC1(duration->years);
        num = (char*) FUNC0(count+2, sizeof(char));
        FUNC3(num, count+2, "%uY", (unsigned int) duration->years);
        str = FUNC4(str, num, count+2);
        FUNC2((void*) num);
    }
    if (duration->months > 0) {
        count = FUNC1(duration->months);
        num = (char*) FUNC0(count+2, sizeof(char));
        FUNC3(num, count+2, "%uM", (unsigned int) duration->months);
        str = FUNC4(str, num, count+2);
        FUNC2((void*) num);
    }
    if (duration->weeks > 0) {
        count = FUNC1(duration->weeks);
        num = (char*) FUNC0(count+2, sizeof(char));
        FUNC3(num, count+2, "%uW", (unsigned int) duration->weeks);
        str = FUNC4(str, num, count+2);
        FUNC2((void*) num);
    }
    if (duration->days > 0) {
        count = FUNC1(duration->days);
        num = (char*) FUNC0(count+2, sizeof(char));
        FUNC3(num, count+2, "%uD", (unsigned int) duration->days);
        str = FUNC4(str, num, count+2);
        FUNC2((void*) num);
    }
    if (T) {
        str = FUNC4(str, "T", 1);
    }
    if (duration->hours > 0) {
        count = FUNC1(duration->hours);
        num = (char*) FUNC0(count+2, sizeof(char));
        FUNC3(num, count+2, "%uH", (unsigned int) duration->hours);
        str = FUNC4(str, num, count+2);
        FUNC2((void*) num);
    }
    if (duration->minutes > 0) {
        count = FUNC1(duration->minutes);
        num = (char*) FUNC0(count+2, sizeof(char));
        FUNC3(num, count+2, "%uM", (unsigned int) duration->minutes);
        str = FUNC4(str, num, count+2);
        FUNC2((void*) num);
    }
    if (duration->seconds > 0) {
        count = FUNC1(duration->seconds);
        num = (char*) FUNC0(count+2, sizeof(char));
        FUNC3(num, count+2, "%uS", (unsigned int) duration->seconds);
        str = FUNC4(str, num, count+2);
        FUNC2((void*) num);
    }
    return str;
}