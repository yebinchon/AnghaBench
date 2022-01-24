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
typedef  void* u8 ;
struct ieee802_1x_mka_participant {void* lrx; void* ltx; void* lan; int /*<<< orphan*/  lki; } ;
struct ieee802_1x_mka_ki {scalar_t__ kn; } ;
struct ieee802_1x_kay {void* lrx_an; void* ltx_an; scalar_t__ lrx_kn; scalar_t__ ltx_kn; } ;
typedef  void* Boolean ;

/* Variables and functions */
 struct ieee802_1x_mka_participant* FUNC0 (struct ieee802_1x_kay*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct ieee802_1x_mka_ki*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

int FUNC3(struct ieee802_1x_kay *kay,
				      struct ieee802_1x_mka_ki *lki, u8 lan,
				      Boolean ltx, Boolean lrx)
{
	struct ieee802_1x_mka_participant *principal;

	principal = FUNC0(kay);
	if (!principal)
		return -1;

	if (!lki)
		FUNC2(&principal->lki, 0, sizeof(principal->lki));
	else
		FUNC1(&principal->lki, lki, sizeof(principal->lki));

	principal->lan = lan;
	principal->ltx = ltx;
	principal->lrx = lrx;
	if (!lki) {
		kay->ltx_kn = 0;
		kay->lrx_kn = 0;
	} else {
		kay->ltx_kn = lki->kn;
		kay->lrx_kn = lki->kn;
	}
	kay->ltx_an = lan;
	kay->lrx_an = lan;

	return 0;
}