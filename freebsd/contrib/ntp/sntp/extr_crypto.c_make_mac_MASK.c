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
typedef  scalar_t__ u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_3__ {int key_len; int /*<<< orphan*/  key_seq; int /*<<< orphan*/  typen; } ;
typedef  TYPE_1__ Key_T ;

/* Variables and functions */
 int EVP_MAX_MD_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void const*,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ *,scalar_t__) ; 

int
FUNC2(
	const void *	pkt_data,
	int		pkt_size,
	int		mac_size,
	Key_T const *	cmp_key,
	void * 		digest
	)
{
	u_int		len;
	u_char		dbuf[EVP_MAX_MD_SIZE];
	
	if (cmp_key->key_len > 64 || mac_size <= 0)
		return 0;
	if (pkt_size % 4 != 0)
		return 0;

	len = FUNC0(dbuf, cmp_key->typen,
			  pkt_data, (u_int)pkt_size,
			  cmp_key->key_seq, (u_int)cmp_key->key_len);
			  

	if (len) {
		if (len > (u_int)mac_size)
			len = (u_int)mac_size;
		FUNC1(digest, dbuf, len);
	}
	return (int)len;
}