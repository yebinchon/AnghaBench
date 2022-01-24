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
struct TYPE_5__ {int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ MD5_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 

void
FUNC3 (unsigned char digest[16], MD5_CTX *context)
{
	/* Do padding. */
	FUNC1 (context);

	/* Store state in digest */
	FUNC0 (digest, context->state, 16);

	/* Zeroize sensitive information. */
	FUNC2(context, sizeof(*context));
}