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
struct eap_eke_session {scalar_t__ prf_len; scalar_t__ nonce_len; scalar_t__ auth_len; scalar_t__ dhcomp_len; scalar_t__ pnonce_len; scalar_t__ pnonce_ps_len; void* mac; void* encr; void* dhgroup; void* prf; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 scalar_t__ FUNC1 (void*,void*) ; 
 scalar_t__ FUNC2 (void*) ; 
 scalar_t__ FUNC3 (void*) ; 
 scalar_t__ FUNC4 (void*) ; 
 scalar_t__ FUNC5 (void*) ; 

int FUNC6(struct eap_eke_session *sess, u8 dhgroup, u8 encr,
			 u8 prf, u8 mac)
{
	sess->dhgroup = dhgroup;
	sess->encr = encr;
	sess->prf = prf;
	sess->mac = mac;

	sess->prf_len = FUNC5(prf);
	sess->nonce_len = FUNC2(prf);
	sess->auth_len = FUNC0(prf);
	sess->dhcomp_len = FUNC1(sess->dhgroup, sess->encr);
	sess->pnonce_len = FUNC3(sess->mac);
	sess->pnonce_ps_len = FUNC4(sess->mac);
	if (sess->prf_len < 0 || sess->nonce_len < 0 || sess->auth_len < 0 ||
	    sess->dhcomp_len < 0 || sess->pnonce_len < 0 ||
	    sess->pnonce_ps_len < 0)
		return -1;

	return 0;
}