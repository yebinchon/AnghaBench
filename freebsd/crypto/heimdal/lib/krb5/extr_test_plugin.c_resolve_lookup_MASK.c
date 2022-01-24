#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int sin_len; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_family; } ;
typedef  struct sockaddr sockaddr ;
typedef  int /*<<< orphan*/  s ;
typedef  int /*<<< orphan*/  krb5_error_code ;
typedef  enum locate_service_type { ____Placeholder_locate_service_type } locate_service_type ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct sockaddr_in*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 int FUNC4 (void*,int,struct sockaddr*) ; 

__attribute__((used)) static krb5_error_code
FUNC5(void *ctx,
	       enum locate_service_type service,
	       const char *realm,
	       int domain,
	       int type,
	       int (*add)(void *,int,struct sockaddr *),
	       void *addctx)
{
    struct sockaddr_in s;

    FUNC2(&s, 0, sizeof(s));

#ifdef HAVE_STRUCT_SOCKADDR_SA_LEN
    s.sin_len = sizeof(s);
#endif
    s.sin_family = AF_INET;
    s.sin_port = FUNC1(88);
    s.sin_addr.s_addr = FUNC0(0x7f000002);

    if (FUNC3(realm, "NOTHERE.H5L.SE") == 0)
	(*add)(addctx, type, (struct sockaddr *)&s);

    return 0;
}