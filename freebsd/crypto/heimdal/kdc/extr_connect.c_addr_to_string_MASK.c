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
struct sockaddr {int sa_family; } ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  krb5_address ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,size_t,size_t*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct sockaddr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t,char*,int) ; 

__attribute__((used)) static void
FUNC4(krb5_context context,
	       struct sockaddr *addr, size_t addr_len, char *str, size_t len)
{
    krb5_address a;
    if(FUNC2(context, addr, &a) == 0) {
	if(FUNC1(&a, str, len, &len) == 0) {
	    FUNC0(context, &a);
	    return;
	}
	FUNC0(context, &a);
    }
    FUNC3(str, len, "<family=%d>", addr->sa_family);
}