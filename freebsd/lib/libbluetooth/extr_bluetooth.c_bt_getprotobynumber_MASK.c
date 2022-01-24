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
struct protoent {int p_proto; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct protoent* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  proto_stayopen ; 

struct protoent *
FUNC3(int proto)
{
	struct protoent	*p;

	FUNC2(proto_stayopen);
	while ((p = FUNC1()) != NULL)
		if (p->p_proto == proto)
			break;
	FUNC0();

	return (p);
}