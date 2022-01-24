#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* hx509_peer_info ;
typedef  int /*<<< orphan*/  hx509_context ;
struct TYPE_4__ {size_t len; int /*<<< orphan*/ * val; } ;
typedef  int /*<<< orphan*/  AlgorithmIdentifier ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/ * FUNC0 (size_t,int) ; 
 int FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 

int
FUNC5(hx509_context context,
			     hx509_peer_info peer,
			     const AlgorithmIdentifier *val,
			     size_t len)
{
    size_t i;

    FUNC2(peer);

    peer->val = FUNC0(len, sizeof(*peer->val));
    if (peer->val == NULL) {
	peer->len = 0;
	FUNC4(context, 0, ENOMEM, "out of memory");
	return ENOMEM;
    }
    peer->len = len;
    for (i = 0; i < len; i++) {
	int ret;
	ret = FUNC1(&val[i], &peer->val[i]);
	if (ret) {
	    FUNC3(context);
	    FUNC2(peer);
	    return ret;
	}
    }
    return 0;
}