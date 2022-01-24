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
struct sockaddr_storage {int dummy; } ;
struct sockaddr_in6 {int /*<<< orphan*/  sin6_addr; int /*<<< orphan*/  sin6_port; int /*<<< orphan*/  sin6_family; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_addr; int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_family; } ;
typedef  int /*<<< orphan*/  socklen_t ;
typedef  int hashvalue_type ;

/* Variables and functions */
 int INET6_SIZE ; 
 int INET_SIZE ; 
 scalar_t__ FUNC0 (struct sockaddr_storage*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static hashvalue_type
FUNC2(struct sockaddr_storage* addr, socklen_t addrlen,
  int use_port)
{
	hashvalue_type h = 0xab;
	/* select the pieces to hash, some OS have changing data inside */
	if(FUNC0(addr, addrlen)) {
		struct sockaddr_in6* in6 = (struct sockaddr_in6*)addr;
		h = FUNC1(&in6->sin6_family, sizeof(in6->sin6_family), h);
		if(use_port){
			h = FUNC1(&in6->sin6_port, sizeof(in6->sin6_port), h);
		}
		h = FUNC1(&in6->sin6_addr, INET6_SIZE, h);
	} else {
		struct sockaddr_in* in = (struct sockaddr_in*)addr;
		h = FUNC1(&in->sin_family, sizeof(in->sin_family), h);
		if(use_port){
			h = FUNC1(&in->sin_port, sizeof(in->sin_port), h);
		}
		h = FUNC1(&in->sin_addr, INET_SIZE, h);
	}
	return h;
}