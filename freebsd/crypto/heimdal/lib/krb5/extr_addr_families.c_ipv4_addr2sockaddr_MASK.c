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
typedef  int /*<<< orphan*/  tmp ;
struct sockaddr {int dummy; } ;
struct sockaddr_in {int sin_port; struct sockaddr sin_addr; int /*<<< orphan*/  sin_family; } ;
typedef  int krb5_socklen_t ;
struct TYPE_4__ {struct sockaddr_in* data; } ;
struct TYPE_5__ {TYPE_1__ address; } ;
typedef  TYPE_2__ krb5_address ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  FUNC0 (struct sockaddr*,struct sockaddr_in*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr_in*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int,int) ; 

__attribute__((used)) static void
FUNC3 (const krb5_address *a,
		    struct sockaddr *sa,
		    krb5_socklen_t *sa_size,
		    int port)
{
    struct sockaddr_in tmp;

    FUNC1 (&tmp, 0, sizeof(tmp));
    tmp.sin_family = AF_INET;
    FUNC0 (&tmp.sin_addr, a->address.data, 4);
    tmp.sin_port = port;
    FUNC0(sa, &tmp, FUNC2(sizeof(tmp), *sa_size));
    *sa_size = sizeof(tmp);
}