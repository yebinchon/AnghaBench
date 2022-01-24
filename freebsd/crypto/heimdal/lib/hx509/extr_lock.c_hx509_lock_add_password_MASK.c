#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* hx509_lock ;
struct TYPE_4__ {char** val; int len; } ;
struct TYPE_5__ {TYPE_1__ password; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 void* FUNC1 (char**,int) ; 
 char* FUNC2 (char const*) ; 

int
FUNC3(hx509_lock lock, const char *password)
{
    void *d;
    char *s;

    s = FUNC2(password);
    if (s == NULL)
	return ENOMEM;

    d = FUNC1(lock->password.val,
		(lock->password.len + 1) * sizeof(lock->password.val[0]));
    if (d == NULL) {
	FUNC0(s);
	return ENOMEM;
    }
    lock->password.val = d;
    lock->password.val[lock->password.len] = s;
    lock->password.len++;

    return 0;
}