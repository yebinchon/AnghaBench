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
struct TYPE_5__ {int /*<<< orphan*/ * xe_name; } ;
typedef  TYPE_1__ xo_encoder_node_t ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  xe_link ; 
 int /*<<< orphan*/  xo_encoders ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 void* FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static xo_encoder_node_t *
FUNC5 (const char *name)
{
    if (name == NULL)
	return NULL;

    xo_encoder_node_t *xep = FUNC4(NULL, sizeof(*xep));
    if (xep) {
	ssize_t len = FUNC2(name) + 1;
	xep->xe_name = FUNC4(NULL, len);
	if (xep->xe_name == NULL) {
	    FUNC3(xep);
	    return NULL;
	}

	FUNC1(xep->xe_name, name, len);

	FUNC0(&xo_encoders, xep, xe_link);
    }

    return xep;
}