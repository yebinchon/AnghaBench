#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ nelms; int /*<<< orphan*/  elm_map; } ;
struct TYPE_5__ {TYPE_1__ enc_cache; int /*<<< orphan*/  enc_private; } ;
typedef  TYPE_2__ enc_softc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(enc_softc_t *enc)
{

	FUNC0(enc->enc_cache.elm_map);
	FUNC0(enc->enc_private);
	enc->enc_cache.nelms = 0;
}