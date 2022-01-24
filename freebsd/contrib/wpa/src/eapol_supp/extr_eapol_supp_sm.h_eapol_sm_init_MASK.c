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
struct eapol_sm {int dummy; } ;
struct eapol_ctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct eapol_ctx*) ; 

__attribute__((used)) static inline struct eapol_sm *FUNC1(struct eapol_ctx *ctx)
{
	FUNC0(ctx);
	return (struct eapol_sm *) 1;
}