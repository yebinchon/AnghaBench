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
typedef  TYPE_1__* hx509_peer_info ;
typedef  int /*<<< orphan*/  hx509_context ;
struct TYPE_3__ {int len; int /*<<< orphan*/ * val; } ;
typedef  int /*<<< orphan*/  AlgorithmIdentifier ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int) ; 

int
FUNC3(hx509_context context,
			    hx509_peer_info peer,
			    const AlgorithmIdentifier *val)
{
    void *ptr;
    int ret;

    ptr = FUNC2(peer->val, sizeof(peer->val[0]) * (peer->len + 1));
    if (ptr == NULL) {
	FUNC1(context, 0, ENOMEM, "out of memory");
	return ENOMEM;
    }
    peer->val = ptr;
    ret = FUNC0(val, &peer->val[peer->len]);
    if (ret == 0)
	peer->len += 1;
    else
	FUNC1(context, 0, ret, "out of memory");
    return ret;
}