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
typedef  int /*<<< orphan*/  tmp ;
struct in_addr {int dummy; } ;
struct sockaddr_in {int sin_port; struct in_addr sin_addr; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
typedef  int krb5_socklen_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  FUNC0 (struct sockaddr*,struct sockaddr_in*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr_in*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static void
FUNC3(const char *addr,
		     struct sockaddr *sa,
		     krb5_socklen_t *sa_size,
		     int port)
{
    struct sockaddr_in tmp;

    FUNC1 (&tmp, 0, sizeof(tmp));
    tmp.sin_family = AF_INET;
    tmp.sin_port   = port;
    tmp.sin_addr   = *((const struct in_addr *)addr);
    FUNC0(sa, &tmp, FUNC2(sizeof(tmp), *sa_size));
    *sa_size = sizeof(tmp);
}