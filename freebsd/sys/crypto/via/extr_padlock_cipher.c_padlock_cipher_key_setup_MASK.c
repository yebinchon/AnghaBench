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
union padlock_cw {scalar_t__ cw_key_generation; } ;
struct padlock_session {void** ses_dkey; void** ses_ekey; union padlock_cw ses_cw; } ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 scalar_t__ PADLOCK_KEY_GENERATION_SW ; 
 int RIJNDAEL_MAXNR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void**,int) ; 
 void* FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (void**,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(struct padlock_session *ses, caddr_t key, int klen)
{
	union padlock_cw *cw;
	int i;

	cw = &ses->ses_cw;
	if (cw->cw_key_generation == PADLOCK_KEY_GENERATION_SW) {
		/* Build expanded keys for both directions */
		FUNC3(ses->ses_ekey, key, klen);
		FUNC2(ses->ses_dkey, key, klen);
		for (i = 0; i < 4 * (RIJNDAEL_MAXNR + 1); i++) {
			ses->ses_ekey[i] = FUNC1(ses->ses_ekey[i]);
			ses->ses_dkey[i] = FUNC1(ses->ses_dkey[i]);
		}
	} else {
		FUNC0(key, ses->ses_ekey, klen);
		FUNC0(key, ses->ses_dkey, klen);
	}
}