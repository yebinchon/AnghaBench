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
struct transmit_sc {int dummy; } ;
typedef  enum confidentiality_offset { ____Placeholder_confidentiality_offset } confidentiality_offset ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (void*,struct transmit_sc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(void *wpa_s, struct transmit_sc *sc,
			enum confidentiality_offset co)
{
	return FUNC1(wpa_s, sc, FUNC0(co));
}