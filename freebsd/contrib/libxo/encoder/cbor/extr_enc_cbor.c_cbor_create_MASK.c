#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xo_handle_t ;
struct TYPE_6__ {int /*<<< orphan*/  c_data; } ;
typedef  TYPE_1__ cbor_private_t ;

/* Variables and functions */
 int CBOR_INDEF ; 
 int CBOR_MAP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC5 (xo_handle_t *xop)
{
    cbor_private_t *cbor = FUNC3(NULL, sizeof(*cbor));
    if (cbor == NULL)
	return -1;

    FUNC0(cbor, sizeof(*cbor));
    FUNC2(&cbor->c_data);

    FUNC4(xop, cbor);

    FUNC1(xop, cbor, &cbor->c_data, CBOR_MAP | CBOR_INDEF, 0, NULL);

    return 0;
}