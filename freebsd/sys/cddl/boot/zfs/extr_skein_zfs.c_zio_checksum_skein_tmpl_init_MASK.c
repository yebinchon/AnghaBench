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
typedef  int /*<<< orphan*/  zio_cksum_t ;
struct TYPE_3__ {int /*<<< orphan*/  zcs_bytes; } ;
typedef  TYPE_1__ zio_cksum_salt_t ;
typedef  void Skein_512_Ctxt_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,int) ; 
 void* FUNC2 (int) ; 

__attribute__((used)) static void *
FUNC3(const zio_cksum_salt_t *salt)
{
	Skein_512_Ctxt_t	*ctx;

	ctx = FUNC2(sizeof (*ctx));
	FUNC1(ctx, sizeof (*ctx));
	(void) FUNC0(ctx, sizeof (zio_cksum_t) * 8, 0,
	    salt->zcs_bytes, sizeof (salt->zcs_bytes));
	return (ctx);
}