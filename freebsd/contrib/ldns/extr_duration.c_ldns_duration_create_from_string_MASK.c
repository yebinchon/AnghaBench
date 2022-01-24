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
typedef  void* time_t ;
struct TYPE_5__ {void* weeks; void* seconds; void* minutes; void* hours; void* days; void* months; void* years; } ;
typedef  TYPE_1__ ldns_duration_type ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 () ; 
 char* FUNC3 (char const*,char) ; 
 char* FUNC4 (char const*,char) ; 

ldns_duration_type*
FUNC5(const char* str)
{
    ldns_duration_type* duration = FUNC2();
    char* P, *X, *T, *W;
    int not_weeks = 0;

    if (!duration) {
        return NULL;
    }
    if (!str) {
        return duration;
    }

    P = FUNC3(str, 'P');
    if (!P) {
	FUNC1(duration);
        return NULL;
    }

    T = FUNC3(str, 'T');
    X = FUNC3(str, 'Y');
    if (X) {
        duration->years = (time_t) FUNC0(str+1);
        str = X;
        not_weeks = 1;
    }
    X = FUNC3(str, 'M');
    if (X && (!T || (size_t) (X-P) < (size_t) (T-P))) {
        duration->months = (time_t) FUNC0(str+1);
        str = X;
        not_weeks = 1;
    }
    X = FUNC3(str, 'D');
    if (X) {
        duration->days = (time_t) FUNC0(str+1);
        str = X;
        not_weeks = 1;
    }
    if (T) {
        str = T;
        not_weeks = 1;
    }
    X = FUNC3(str, 'H');
    if (X && T) {
        duration->hours = (time_t) FUNC0(str+1);
        str = X;
        not_weeks = 1;
    }
    X = FUNC4(str, 'M');
    if (X && T && (size_t) (X-P) > (size_t) (T-P)) {
        duration->minutes = (time_t) FUNC0(str+1);
        str = X;
        not_weeks = 1;
    }
    X = FUNC3(str, 'S');
    if (X && T) {
        duration->seconds = (time_t) FUNC0(str+1);
        str = X;
        not_weeks = 1;
    }

    W = FUNC3(str, 'W');
    if (W) {
        if (not_weeks) {
            FUNC1(duration);
            return NULL;
        } else {
            duration->weeks = (time_t) FUNC0(str+1);
            str = W;
        }
    }
    return duration;
}